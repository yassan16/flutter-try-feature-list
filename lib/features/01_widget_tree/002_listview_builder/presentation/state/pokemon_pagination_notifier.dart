import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_builder/domain/pokemon_pagination.dart';
import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_builder/presentation/provider/pokemon_pagination_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_pagination_notifier.g.dart';

@riverpod
class PokemonPaginationNotifier extends _$PokemonPaginationNotifier {
  @override
  Future<PokemonPaginationEntitiy> build() async {
    return await ref.watch(pokemonPaginationUsecaseProvider).execute(null);
  }

  // Future<void> fetchNextPage() async {
  //   if (state.isLoading || !state.hasNextPage) return;

  //   state = const AsyncValue.loading();
  //   try {
  //     final nextPage = await ref
  //         .watch(pokemonRepositoryimplProvider)
  //         .fetchNextPage(state.value!.nextUrl);
  //     state = AsyncValue.data(nextPage);
  //   } catch (e) {
  //     state = AsyncValue.error(e);
  //   }
  // }
}
