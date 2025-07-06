import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/001_http/repository/dto/pokemon_dto.dart';
import 'package:http/http.dart' as http;

class HttpScreen extends ConsumerStatefulWidget {
  const HttpScreen({super.key});

  @override
  ConsumerState<HttpScreen> createState() => _HttpScreenState();
}

class _HttpScreenState extends ConsumerState<HttpScreen> {
  PokemonDto? pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final response = await http.get(
                  Uri.parse('https://pokeapi.co/api/v2/pokemon/1/'),
                );
                if (response.statusCode == 200) {
                  pokemon = PokemonDto.fromJson(jsonDecode(response.body));
                }
                setState(() {
                  print(pokemon.toString());
                });
              },
              child: const Text("API呼び出し"),
            ),
            if (pokemon != null)
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ID: ${pokemon!.id}'),
                  Text('Name: ${pokemon!.name}'),
                  Text('Height: ${pokemon!.height}'),
                  Text('Weight: ${pokemon!.weight}'),
                  Image.network(
                    pokemon!.sprites['other']['showdown']['front_default'],
                    width: 100.0,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
