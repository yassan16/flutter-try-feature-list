import 'package:dio/dio.dart';
import 'package:flutter_try_feature_list/common/infrastructure/dto/pokeapi/pokemon/pokemon_dto.dart';
import 'package:flutter_try_feature_list/common/infrastructure/dto/pokeapi/resource_lists_pagination/pagination.dart';

class PokemonPaginationApiClient {
  final Dio _dio;

  PokemonPaginationApiClient(this._dio);

  /// ページネーションされたポケモンリストを取得する
  Future<PaginationDto> fetchPokemonList({
    int offset = 0,
    int limit = 20,
  }) async {
    final url = 'https://pokeapi.co/api/v2/pokemon?offset=$offset&limit=$limit';
    final response = await _dio.get(url);
    return PaginationDto.fromJson(response.data);
  }

  /// 指定されたURLからポケモンの詳細を取得する
  Future<PokemonDto> fetchPokemon({required String url}) async {
    final response = await _dio.get(url);
    return PokemonDto.fromJson(response.data);
  }
}
