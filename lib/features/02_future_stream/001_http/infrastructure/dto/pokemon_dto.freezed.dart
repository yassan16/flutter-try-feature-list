// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonDto {

 int get id; String get name;
@JsonKey(name: 'base_experience') int get baseExperience; int get height;
@JsonKey(name: 'is_default') bool get isDefault; int get order; int get weight; List<dynamic> get abilities; List<dynamic> get forms;
@JsonKey(name: 'game_indices') List<dynamic> get gameIndices;
@JsonKey(name: 'held_items') List<dynamic> get heldItems;
@JsonKey(name: 'location_area_encounters') String get locationAreaEncounters; List<dynamic> get moves;
@JsonKey(name: 'past_types') List<dynamic> get pastTypes;
@JsonKey(name: 'past_abilities') List<dynamic> get pastAbilities; Map<String, dynamic> get sprites; Map<String, dynamic> get cries; Map<String, dynamic> get species; List<dynamic> get stats; List<dynamic> get types;
/// Create a copy of PokemonDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonDtoCopyWith<PokemonDto> get copyWith => _$PokemonDtoCopyWithImpl<PokemonDto>(this as PokemonDto, _$identity);

  /// Serializes this PokemonDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.baseExperience, baseExperience) || other.baseExperience == baseExperience)&&(identical(other.height, height) || other.height == height)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.order, order) || other.order == order)&&(identical(other.weight, weight) || other.weight == weight)&&const DeepCollectionEquality().equals(other.abilities, abilities)&&const DeepCollectionEquality().equals(other.forms, forms)&&const DeepCollectionEquality().equals(other.gameIndices, gameIndices)&&const DeepCollectionEquality().equals(other.heldItems, heldItems)&&(identical(other.locationAreaEncounters, locationAreaEncounters) || other.locationAreaEncounters == locationAreaEncounters)&&const DeepCollectionEquality().equals(other.moves, moves)&&const DeepCollectionEquality().equals(other.pastTypes, pastTypes)&&const DeepCollectionEquality().equals(other.pastAbilities, pastAbilities)&&const DeepCollectionEquality().equals(other.sprites, sprites)&&const DeepCollectionEquality().equals(other.cries, cries)&&const DeepCollectionEquality().equals(other.species, species)&&const DeepCollectionEquality().equals(other.stats, stats)&&const DeepCollectionEquality().equals(other.types, types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,baseExperience,height,isDefault,order,weight,const DeepCollectionEquality().hash(abilities),const DeepCollectionEquality().hash(forms),const DeepCollectionEquality().hash(gameIndices),const DeepCollectionEquality().hash(heldItems),locationAreaEncounters,const DeepCollectionEquality().hash(moves),const DeepCollectionEquality().hash(pastTypes),const DeepCollectionEquality().hash(pastAbilities),const DeepCollectionEquality().hash(sprites),const DeepCollectionEquality().hash(cries),const DeepCollectionEquality().hash(species),const DeepCollectionEquality().hash(stats),const DeepCollectionEquality().hash(types)]);

@override
String toString() {
  return 'PokemonDto(id: $id, name: $name, baseExperience: $baseExperience, height: $height, isDefault: $isDefault, order: $order, weight: $weight, abilities: $abilities, forms: $forms, gameIndices: $gameIndices, heldItems: $heldItems, locationAreaEncounters: $locationAreaEncounters, moves: $moves, pastTypes: $pastTypes, pastAbilities: $pastAbilities, sprites: $sprites, cries: $cries, species: $species, stats: $stats, types: $types)';
}


}

/// @nodoc
abstract mixin class $PokemonDtoCopyWith<$Res>  {
  factory $PokemonDtoCopyWith(PokemonDto value, $Res Function(PokemonDto) _then) = _$PokemonDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'base_experience') int baseExperience, int height,@JsonKey(name: 'is_default') bool isDefault, int order, int weight, List<dynamic> abilities, List<dynamic> forms,@JsonKey(name: 'game_indices') List<dynamic> gameIndices,@JsonKey(name: 'held_items') List<dynamic> heldItems,@JsonKey(name: 'location_area_encounters') String locationAreaEncounters, List<dynamic> moves,@JsonKey(name: 'past_types') List<dynamic> pastTypes,@JsonKey(name: 'past_abilities') List<dynamic> pastAbilities, Map<String, dynamic> sprites, Map<String, dynamic> cries, Map<String, dynamic> species, List<dynamic> stats, List<dynamic> types
});




}
/// @nodoc
class _$PokemonDtoCopyWithImpl<$Res>
    implements $PokemonDtoCopyWith<$Res> {
  _$PokemonDtoCopyWithImpl(this._self, this._then);

  final PokemonDto _self;
  final $Res Function(PokemonDto) _then;

/// Create a copy of PokemonDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? baseExperience = null,Object? height = null,Object? isDefault = null,Object? order = null,Object? weight = null,Object? abilities = null,Object? forms = null,Object? gameIndices = null,Object? heldItems = null,Object? locationAreaEncounters = null,Object? moves = null,Object? pastTypes = null,Object? pastAbilities = null,Object? sprites = null,Object? cries = null,Object? species = null,Object? stats = null,Object? types = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,baseExperience: null == baseExperience ? _self.baseExperience : baseExperience // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,abilities: null == abilities ? _self.abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<dynamic>,forms: null == forms ? _self.forms : forms // ignore: cast_nullable_to_non_nullable
as List<dynamic>,gameIndices: null == gameIndices ? _self.gameIndices : gameIndices // ignore: cast_nullable_to_non_nullable
as List<dynamic>,heldItems: null == heldItems ? _self.heldItems : heldItems // ignore: cast_nullable_to_non_nullable
as List<dynamic>,locationAreaEncounters: null == locationAreaEncounters ? _self.locationAreaEncounters : locationAreaEncounters // ignore: cast_nullable_to_non_nullable
as String,moves: null == moves ? _self.moves : moves // ignore: cast_nullable_to_non_nullable
as List<dynamic>,pastTypes: null == pastTypes ? _self.pastTypes : pastTypes // ignore: cast_nullable_to_non_nullable
as List<dynamic>,pastAbilities: null == pastAbilities ? _self.pastAbilities : pastAbilities // ignore: cast_nullable_to_non_nullable
as List<dynamic>,sprites: null == sprites ? _self.sprites : sprites // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,cries: null == cries ? _self.cries : cries // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as List<dynamic>,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PokemonDto implements PokemonDto {
   _PokemonDto({required this.id, required this.name, @JsonKey(name: 'base_experience') required this.baseExperience, required this.height, @JsonKey(name: 'is_default') required this.isDefault, required this.order, required this.weight, required final  List<dynamic> abilities, required final  List<dynamic> forms, @JsonKey(name: 'game_indices') required final  List<dynamic> gameIndices, @JsonKey(name: 'held_items') required final  List<dynamic> heldItems, @JsonKey(name: 'location_area_encounters') required this.locationAreaEncounters, required final  List<dynamic> moves, @JsonKey(name: 'past_types') required final  List<dynamic> pastTypes, @JsonKey(name: 'past_abilities') final  List<dynamic> pastAbilities = const [], required final  Map<String, dynamic> sprites, required final  Map<String, dynamic> cries, required final  Map<String, dynamic> species, required final  List<dynamic> stats, required final  List<dynamic> types}): _abilities = abilities,_forms = forms,_gameIndices = gameIndices,_heldItems = heldItems,_moves = moves,_pastTypes = pastTypes,_pastAbilities = pastAbilities,_sprites = sprites,_cries = cries,_species = species,_stats = stats,_types = types;
  factory _PokemonDto.fromJson(Map<String, dynamic> json) => _$PokemonDtoFromJson(json);

@override final  int id;
@override final  String name;

@override@JsonKey(name: 'base_experience') final  int baseExperience;
@override final  int height;

@override@JsonKey(name: 'is_default') final  bool isDefault;
@override final  int order;
@override final  int weight;
 final  List<dynamic> _abilities;
@override List<dynamic> get abilities {
  if (_abilities is EqualUnmodifiableListView) return _abilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_abilities);
}

 final  List<dynamic> _forms;
@override List<dynamic> get forms {
  if (_forms is EqualUnmodifiableListView) return _forms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_forms);
}


 final  List<dynamic> _gameIndices;

@override@JsonKey(name: 'game_indices') List<dynamic> get gameIndices {
  if (_gameIndices is EqualUnmodifiableListView) return _gameIndices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gameIndices);
}


 final  List<dynamic> _heldItems;

@override@JsonKey(name: 'held_items') List<dynamic> get heldItems {
  if (_heldItems is EqualUnmodifiableListView) return _heldItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_heldItems);
}


@override@JsonKey(name: 'location_area_encounters') final  String locationAreaEncounters;
 final  List<dynamic> _moves;
@override List<dynamic> get moves {
  if (_moves is EqualUnmodifiableListView) return _moves;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_moves);
}


 final  List<dynamic> _pastTypes;

@override@JsonKey(name: 'past_types') List<dynamic> get pastTypes {
  if (_pastTypes is EqualUnmodifiableListView) return _pastTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pastTypes);
}


 final  List<dynamic> _pastAbilities;

@override@JsonKey(name: 'past_abilities') List<dynamic> get pastAbilities {
  if (_pastAbilities is EqualUnmodifiableListView) return _pastAbilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pastAbilities);
}

 final  Map<String, dynamic> _sprites;
@override Map<String, dynamic> get sprites {
  if (_sprites is EqualUnmodifiableMapView) return _sprites;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_sprites);
}

 final  Map<String, dynamic> _cries;
@override Map<String, dynamic> get cries {
  if (_cries is EqualUnmodifiableMapView) return _cries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_cries);
}

 final  Map<String, dynamic> _species;
@override Map<String, dynamic> get species {
  if (_species is EqualUnmodifiableMapView) return _species;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_species);
}

 final  List<dynamic> _stats;
@override List<dynamic> get stats {
  if (_stats is EqualUnmodifiableListView) return _stats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stats);
}

 final  List<dynamic> _types;
@override List<dynamic> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}


/// Create a copy of PokemonDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonDtoCopyWith<_PokemonDto> get copyWith => __$PokemonDtoCopyWithImpl<_PokemonDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.baseExperience, baseExperience) || other.baseExperience == baseExperience)&&(identical(other.height, height) || other.height == height)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.order, order) || other.order == order)&&(identical(other.weight, weight) || other.weight == weight)&&const DeepCollectionEquality().equals(other._abilities, _abilities)&&const DeepCollectionEquality().equals(other._forms, _forms)&&const DeepCollectionEquality().equals(other._gameIndices, _gameIndices)&&const DeepCollectionEquality().equals(other._heldItems, _heldItems)&&(identical(other.locationAreaEncounters, locationAreaEncounters) || other.locationAreaEncounters == locationAreaEncounters)&&const DeepCollectionEquality().equals(other._moves, _moves)&&const DeepCollectionEquality().equals(other._pastTypes, _pastTypes)&&const DeepCollectionEquality().equals(other._pastAbilities, _pastAbilities)&&const DeepCollectionEquality().equals(other._sprites, _sprites)&&const DeepCollectionEquality().equals(other._cries, _cries)&&const DeepCollectionEquality().equals(other._species, _species)&&const DeepCollectionEquality().equals(other._stats, _stats)&&const DeepCollectionEquality().equals(other._types, _types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,baseExperience,height,isDefault,order,weight,const DeepCollectionEquality().hash(_abilities),const DeepCollectionEquality().hash(_forms),const DeepCollectionEquality().hash(_gameIndices),const DeepCollectionEquality().hash(_heldItems),locationAreaEncounters,const DeepCollectionEquality().hash(_moves),const DeepCollectionEquality().hash(_pastTypes),const DeepCollectionEquality().hash(_pastAbilities),const DeepCollectionEquality().hash(_sprites),const DeepCollectionEquality().hash(_cries),const DeepCollectionEquality().hash(_species),const DeepCollectionEquality().hash(_stats),const DeepCollectionEquality().hash(_types)]);

@override
String toString() {
  return 'PokemonDto(id: $id, name: $name, baseExperience: $baseExperience, height: $height, isDefault: $isDefault, order: $order, weight: $weight, abilities: $abilities, forms: $forms, gameIndices: $gameIndices, heldItems: $heldItems, locationAreaEncounters: $locationAreaEncounters, moves: $moves, pastTypes: $pastTypes, pastAbilities: $pastAbilities, sprites: $sprites, cries: $cries, species: $species, stats: $stats, types: $types)';
}


}

/// @nodoc
abstract mixin class _$PokemonDtoCopyWith<$Res> implements $PokemonDtoCopyWith<$Res> {
  factory _$PokemonDtoCopyWith(_PokemonDto value, $Res Function(_PokemonDto) _then) = __$PokemonDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'base_experience') int baseExperience, int height,@JsonKey(name: 'is_default') bool isDefault, int order, int weight, List<dynamic> abilities, List<dynamic> forms,@JsonKey(name: 'game_indices') List<dynamic> gameIndices,@JsonKey(name: 'held_items') List<dynamic> heldItems,@JsonKey(name: 'location_area_encounters') String locationAreaEncounters, List<dynamic> moves,@JsonKey(name: 'past_types') List<dynamic> pastTypes,@JsonKey(name: 'past_abilities') List<dynamic> pastAbilities, Map<String, dynamic> sprites, Map<String, dynamic> cries, Map<String, dynamic> species, List<dynamic> stats, List<dynamic> types
});




}
/// @nodoc
class __$PokemonDtoCopyWithImpl<$Res>
    implements _$PokemonDtoCopyWith<$Res> {
  __$PokemonDtoCopyWithImpl(this._self, this._then);

  final _PokemonDto _self;
  final $Res Function(_PokemonDto) _then;

/// Create a copy of PokemonDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? baseExperience = null,Object? height = null,Object? isDefault = null,Object? order = null,Object? weight = null,Object? abilities = null,Object? forms = null,Object? gameIndices = null,Object? heldItems = null,Object? locationAreaEncounters = null,Object? moves = null,Object? pastTypes = null,Object? pastAbilities = null,Object? sprites = null,Object? cries = null,Object? species = null,Object? stats = null,Object? types = null,}) {
  return _then(_PokemonDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,baseExperience: null == baseExperience ? _self.baseExperience : baseExperience // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,abilities: null == abilities ? _self._abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<dynamic>,forms: null == forms ? _self._forms : forms // ignore: cast_nullable_to_non_nullable
as List<dynamic>,gameIndices: null == gameIndices ? _self._gameIndices : gameIndices // ignore: cast_nullable_to_non_nullable
as List<dynamic>,heldItems: null == heldItems ? _self._heldItems : heldItems // ignore: cast_nullable_to_non_nullable
as List<dynamic>,locationAreaEncounters: null == locationAreaEncounters ? _self.locationAreaEncounters : locationAreaEncounters // ignore: cast_nullable_to_non_nullable
as String,moves: null == moves ? _self._moves : moves // ignore: cast_nullable_to_non_nullable
as List<dynamic>,pastTypes: null == pastTypes ? _self._pastTypes : pastTypes // ignore: cast_nullable_to_non_nullable
as List<dynamic>,pastAbilities: null == pastAbilities ? _self._pastAbilities : pastAbilities // ignore: cast_nullable_to_non_nullable
as List<dynamic>,sprites: null == sprites ? _self._sprites : sprites // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,cries: null == cries ? _self._cries : cries // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,species: null == species ? _self._species : species // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,stats: null == stats ? _self._stats : stats // ignore: cast_nullable_to_non_nullable
as List<dynamic>,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}

// dart format on
