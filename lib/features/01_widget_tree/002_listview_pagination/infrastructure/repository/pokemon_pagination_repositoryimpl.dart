import 'package:dio/dio.dart';
import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_pagination/domain/pokemon_002.dart';
import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_pagination/domain/pokemon_pagination.dart';
import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_pagination/domain/pokemon_pagination_repository.dart';
import 'package:flutter_try_feature_list/features/01_widget_tree/002_listview_pagination/infrastructure/api_client/pokemon_pagination_api_client.dart';

class PokemonPaginationRepositoryimpl extends PokemonPaginationRepository {
  final PokemonPaginationApiClient _pokemonPaginationApiClient;

  PokemonPaginationRepositoryimpl(this._pokemonPaginationApiClient);

  @override
  Future<PokemonPaginationEntitiy> fetchPokemonList({
    int offset = 0,
    int limit = 20,
  }) async {
    try {
      final paginationDto = await _pokemonPaginationApiClient.fetchPokemonList(
        offset: offset,
        limit: limit,
      );

      // paginationDtoのResultsをループ処理
      late final pokemonList = <Pokemon002>[];
      for (final result in paginationDto.results ?? []) {
        // NamedAPIResourceのURLを呼び出し、各ポケモンの詳細を取得する
        pokemonList.add(await fetchPokemonDetail(result.url));
      }

      // dtoからドメインモデルへ変換
      return PokemonPaginationEntitiy(
        pokemonList: pokemonList,
        nextUrl: paginationDto.next,
      );
    } on DioException catch (e) {
      throw Exception('Error fetching Pokemon list: $e');
    }
  }

  @override
  Future<Pokemon002> fetchPokemonDetail(String url) async {
    final pokemonDto = await _pokemonPaginationApiClient.fetchPokemon(url: url);
    // dtoからドメインモデルへ変換
    return Pokemon002(
      id: pokemonDto.id,
      name: pokemonDto.name,
      imageUrl: pokemonDto.sprites['front_default'],
    );
  }
}
