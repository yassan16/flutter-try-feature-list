import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_dto.freezed.dart';
part 'pokemon_dto.g.dart';

// v3からabstractを付ける必要がある!!
@freezed
abstract class PokemonDto with _$PokemonDto {
  factory PokemonDto({
    required int id,
    required String name,
    @JsonKey(name: 'base_experience') required int baseExperience,
    required int height,
    @JsonKey(name: 'is_default') required bool isDefault,
    required int order,
    required int weight,
    required List<dynamic> abilities,
    required List<dynamic> forms,
    @JsonKey(name: 'game_indices') required List<dynamic> gameIndices,
    @JsonKey(name: 'held_items') required List<dynamic> heldItems,
    @JsonKey(name: 'location_area_encounters')
    required String locationAreaEncounters,
    required List<dynamic> moves,
    @JsonKey(name: 'past_types') required List<dynamic> pastTypes,
    @JsonKey(name: 'past_abilities') @Default([]) List<dynamic> pastAbilities,
    required Map<String, dynamic> sprites,
    required Map<String, dynamic> cries,
    required Map<String, dynamic> species,
    required List<dynamic> stats,
    required List<dynamic> types,
  }) = _PokemonDto;

  factory PokemonDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonDtoFromJson(json);
}
