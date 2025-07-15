import 'package:dio/dio.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/infrastructure/dto/pokemon_dto.dart';

final dio = Dio();

class PokemonService {
  PokemonService();

  Future<PokemonDto> getPokemon() async {
    final response = await dio.get('https://pokeapi.co/api/v2/pokemon/4/');
    if (response.statusCode == 200) {
      return PokemonDto.fromJson(response.data);
    } else {
      throw Exception('Failed to load pokemon');
    }
  }
}
