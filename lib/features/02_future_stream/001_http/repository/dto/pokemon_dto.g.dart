// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonDto _$PokemonDtoFromJson(Map<String, dynamic> json) => _PokemonDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  baseExperience: (json['base_experience'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  isDefault: json['is_default'] as bool,
  order: (json['order'] as num).toInt(),
  weight: (json['weight'] as num).toInt(),
  abilities: json['abilities'] as List<dynamic>,
  forms: json['forms'] as List<dynamic>,
  gameIndices: json['game_indices'] as List<dynamic>,
  heldItems: json['held_items'] as List<dynamic>,
  locationAreaEncounters: json['location_area_encounters'] as String,
  moves: json['moves'] as List<dynamic>,
  pastTypes: json['past_types'] as List<dynamic>,
  pastAbilities: json['past_abilities'] as List<dynamic>? ?? const [],
  sprites: json['sprites'] as Map<String, dynamic>,
  cries: json['cries'] as Map<String, dynamic>,
  species: json['species'] as Map<String, dynamic>,
  stats: json['stats'] as List<dynamic>,
  types: json['types'] as List<dynamic>,
);

Map<String, dynamic> _$PokemonDtoToJson(_PokemonDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'base_experience': instance.baseExperience,
      'height': instance.height,
      'is_default': instance.isDefault,
      'order': instance.order,
      'weight': instance.weight,
      'abilities': instance.abilities,
      'forms': instance.forms,
      'game_indices': instance.gameIndices,
      'held_items': instance.heldItems,
      'location_area_encounters': instance.locationAreaEncounters,
      'moves': instance.moves,
      'past_types': instance.pastTypes,
      'past_abilities': instance.pastAbilities,
      'sprites': instance.sprites,
      'cries': instance.cries,
      'species': instance.species,
      'stats': instance.stats,
      'types': instance.types,
    };
