import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_pagination/presentation/state/pokemon_pagination_notifier.dart';
import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_pagination/presentation/components/loading_indicator_002.dart';

/// 002_ListView_Pagination
/// ListviewPagination
class ListviewPaginationScreen extends ConsumerStatefulWidget {
  const ListviewPaginationScreen({super.key});

  @override
  ConsumerState<ListviewPaginationScreen> createState() =>
      _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState
    extends ConsumerState<ListviewPaginationScreen> {
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
          final hasNext = data.nextUrl != null;
          return ListView.builder(
            controller: _scrollController,
            itemCount:
                hasNext ? data.pokemonList.length + 1 : data.pokemonList.length,
            itemBuilder: (context, index) {
              if (hasNext && index == data.pokemonList.length) {
                // 末尾にLoadingIndicatorを表示
                return const LoadingIndicator002();
              }
              final pokemon = data.pokemonList[index];
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
