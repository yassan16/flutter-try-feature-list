import 'package:dio/dio.dart';
import 'package:flutter_try_feature_list/common/infrastructure/dto/pokeapi/pokemon/pokemon_dto.dart';

class PokemonApiClient {
  Dio dio;
  PokemonApiClient(this.dio);

  Future<PokemonDto> getPokemon() async {
    final response = await dio.get('https://pokeapi.co/api/v2/pokemon/4/');
    return PokemonDto.fromJson(response.data);
  }

  Future<PokemonDto> getEvlovePokemon(String id) async {
    final response = await dio.get('https://pokeapi.co/api/v2/pokemon/$id/');
    return PokemonDto.fromJson(response.data);
  }
}
