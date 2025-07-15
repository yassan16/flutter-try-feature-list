import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/application/get_pokemon_usecase.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/infrastructure/dto/pokemon_dto.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/infrastructure/repository/pokemon_repositoryImpl.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/infrastructure/service/pokemon_service.dart';

class DioScreen extends ConsumerStatefulWidget {
  const DioScreen({super.key});

  @override
  ConsumerState<DioScreen> createState() => _DioScreenState();
}

class _DioScreenState extends ConsumerState<DioScreen> {
  PokemonDto? pokemon;
  GetPokemonUsecase getPokemonUsecase = GetPokemonUsecase(
    PokemonRepositoryimpl(PokemonService()),
  );

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
                pokemon = await getPokemonUsecase.execute();
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
