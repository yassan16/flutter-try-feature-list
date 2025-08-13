import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_pagination/domain/pokemon_002.dart';
import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_pagination/domain/pokemon_pagination.dart';

abstract class PokemonPaginationRepository {
  Future<PokemonPaginationEntitiy> fetchPokemonList({
    required int offset,
    required int limit,
  });

  Future<Pokemon002> fetchPokemonDetail(String url);
}
