// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginationDto {

 int get count; String? get next; String? get previous; List<NamedAPIResource>? get results;
/// Create a copy of PaginationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationDtoCopyWith<PaginationDto> get copyWith => _$PaginationDtoCopyWithImpl<PaginationDto>(this as PaginationDto, _$identity);

  /// Serializes this PaginationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationDto&&(identical(other.count, count) || other.count == count)&&(identical(other.next, next) || other.next == next)&&(identical(other.previous, previous) || other.previous == previous)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,next,previous,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'PaginationDto(count: $count, next: $next, previous: $previous, results: $results)';
}


}

/// @nodoc
abstract mixin class $PaginationDtoCopyWith<$Res>  {
  factory $PaginationDtoCopyWith(PaginationDto value, $Res Function(PaginationDto) _then) = _$PaginationDtoCopyWithImpl;
@useResult
$Res call({
 int count, String? next, String? previous, List<NamedAPIResource>? results
});




}
/// @nodoc
class _$PaginationDtoCopyWithImpl<$Res>
    implements $PaginationDtoCopyWith<$Res> {
  _$PaginationDtoCopyWithImpl(this._self, this._then);

  final PaginationDto _self;
  final $Res Function(PaginationDto) _then;

/// Create a copy of PaginationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? next = freezed,Object? previous = freezed,Object? results = freezed,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<NamedAPIResource>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PaginationDto implements PaginationDto {
   _PaginationDto({required this.count, required this.next, required this.previous, required final  List<NamedAPIResource>? results}): _results = results;
  factory _PaginationDto.fromJson(Map<String, dynamic> json) => _$PaginationDtoFromJson(json);

@override final  int count;
@override final  String? next;
@override final  String? previous;
 final  List<NamedAPIResource>? _results;
@override List<NamedAPIResource>? get results {
  final value = _results;
  if (value == null) return null;
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PaginationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationDtoCopyWith<_PaginationDto> get copyWith => __$PaginationDtoCopyWithImpl<_PaginationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationDto&&(identical(other.count, count) || other.count == count)&&(identical(other.next, next) || other.next == next)&&(identical(other.previous, previous) || other.previous == previous)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,next,previous,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'PaginationDto(count: $count, next: $next, previous: $previous, results: $results)';
}


}

/// @nodoc
abstract mixin class _$PaginationDtoCopyWith<$Res> implements $PaginationDtoCopyWith<$Res> {
  factory _$PaginationDtoCopyWith(_PaginationDto value, $Res Function(_PaginationDto) _then) = __$PaginationDtoCopyWithImpl;
@override @useResult
$Res call({
 int count, String? next, String? previous, List<NamedAPIResource>? results
});




}
/// @nodoc
class __$PaginationDtoCopyWithImpl<$Res>
    implements _$PaginationDtoCopyWith<$Res> {
  __$PaginationDtoCopyWithImpl(this._self, this._then);

  final _PaginationDto _self;
  final $Res Function(_PaginationDto) _then;

/// Create a copy of PaginationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? next = freezed,Object? previous = freezed,Object? results = freezed,}) {
  return _then(_PaginationDto(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,results: freezed == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<NamedAPIResource>?,
  ));
}


}

// dart format on
