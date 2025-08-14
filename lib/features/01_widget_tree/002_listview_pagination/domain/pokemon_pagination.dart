import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_pagination/domain/pokemon_002.dart';

class PokemonPaginationEntitiy {
  final List<Pokemon002> pokemonList;
  final String? nextUrl; // 次のページの判定にも使用

  PokemonPaginationEntitiy({required this.pokemonList, required this.nextUrl});

  /// fetch前ののページを追加
  void addPokemonList(List<Pokemon002> newPokemonList) {
    pokemonList.insertAll(0, newPokemonList);
  }
}
