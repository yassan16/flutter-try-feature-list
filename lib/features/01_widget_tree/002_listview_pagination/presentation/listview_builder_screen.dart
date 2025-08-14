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
          final hasNext = data.nextUrl != null;
          return ListView.builder(
            controller: _scrollController,
            itemCount:
                hasNext ? data.pokemonList.length + 1 : data.pokemonList.length,
            itemBuilder: (context, index) {
              if (hasNext && index == data.pokemonList.length) {
                // 末尾にローディングインジケーターを表示
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator(
                              strokeWidth: 3,
                              color: Colors.lightBlue,
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            '読み込み中...',
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
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
