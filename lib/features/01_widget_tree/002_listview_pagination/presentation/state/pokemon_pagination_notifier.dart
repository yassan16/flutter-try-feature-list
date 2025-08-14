import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_pagination/domain/pokemon_002.dart';
import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_pagination/domain/pokemon_pagination.dart';
import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_pagination/presentation/provider/pokemon_pagination_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_pagination_notifier.g.dart';

/// 責務：ポケモンのページネーション状態を管理する
@riverpod
class PokemonPaginationNotifier extends _$PokemonPaginationNotifier {
  @override
  Future<PokemonPaginationEntitiy> build() async {
    return await ref.watch(pokemonPaginationUsecaseProvider).execute(null);
  }

  Future<void> fetchNextPage() async {
    // 次のページがない場合は何もしない
    if (state.value?.nextUrl == null) return;

    // fetch前のリストを保持
    final List<Pokemon002> previousList = state.value?.pokemonList ?? [];
    if (previousList.isEmpty) return;

    // 次のページを取得
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final result = await ref
          .read(pokemonPaginationUsecaseProvider)
          .execute(state.value?.nextUrl);

      // fetch前のリストを追加
      result.addPokemonList(previousList);

      return result;
    });
  }
}
