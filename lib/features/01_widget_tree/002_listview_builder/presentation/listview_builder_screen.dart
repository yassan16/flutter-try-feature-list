import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_builder/presentation/state/pokemon_pagination_notifier.dart';

/// 002_ListView.builderのサンプル画面
class ListviewBuilderScreen extends ConsumerStatefulWidget {
  const ListviewBuilderScreen({super.key});

  @override
  ConsumerState<ListviewBuilderScreen> createState() =>
      _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends ConsumerState<ListviewBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    final result = ref.watch(pokemonPaginationNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('ListView.builder Sample')),
      body: result.when(
        data: (data) {
          return ListView.builder(
            itemCount: data.listPokemon.length,
            itemBuilder: (context, index) {
              final pokemon = data.listPokemon[index];
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
