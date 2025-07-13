import 'dart:convert';

import 'package:flutter_try_feature_list/features/02_future_stream/001_http/infrastructure/dto/pokemon_dto.dart';
import 'package:http/http.dart' as http;

class PokemonService {
  PokemonService();

  Future<PokemonDto> getPokemon() async {
    final response = await http.get(
      Uri.parse('https://pokeapi.co/api/v2/pokemon/1/'),
    );
    if (response.statusCode == 200) {
      return PokemonDto.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load pokemon');
    }
  }
}
