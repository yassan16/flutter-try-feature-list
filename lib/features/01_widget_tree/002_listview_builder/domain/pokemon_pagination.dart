import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_builder/domain/pokemon_002.dart';

class PokemonPaginationEntitiy {
  final List<Pokemon002> listPokemon;
  final String? nextUrl; // 次のページの判定にも使用

  PokemonPaginationEntitiy({required this.listPokemon, required this.nextUrl});
}
