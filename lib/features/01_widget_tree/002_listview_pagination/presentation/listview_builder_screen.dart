import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_pagination/presentation/state/pokemon_pagination_notifier.dart';

/// 002_ListView_Pagination
class ListviewBuilderScreen extends ConsumerStatefulWidget {
  const ListviewBuilderScreen({super.key});

  @override
  ConsumerState<ListviewBuilderScreen> createState() =>
      _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends ConsumerState<ListviewBuilderScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    // スクロール位置が末尾付近なら次ページ取得
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      // ページネーション用のメソッドを呼び出し
      ref.read(pokemonPaginationNotifierProvider.notifier).fetchNextPage();
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final result = ref.watch(pokemonPaginationNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('ListView.builder Sample')),
      body: result.when(
        data: (data) {
          // copyWithPreviousは、前回のstateを保持するためこちらに分岐
          return ListView.builder(
            controller: _scrollController,
            itemCount: data.pokemonList.length,
            itemBuilder: (context, index) {
              final pokemon = data.pokemonList[index];
              // 次のページがある場合、リストの末尾に読み込み中のインジケーターを表示
              return Column(
                children: [
                  Text(pokemon.name),
                  Image.network(pokemon.imageUrl, width: 100.0),
                ],
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
