// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'named_api_resource.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NamedAPIResource {

 String? get name; String? get url;
/// Create a copy of NamedAPIResource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NamedAPIResourceCopyWith<NamedAPIResource> get copyWith => _$NamedAPIResourceCopyWithImpl<NamedAPIResource>(this as NamedAPIResource, _$identity);

  /// Serializes this NamedAPIResource to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NamedAPIResource&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'NamedAPIResource(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $NamedAPIResourceCopyWith<$Res>  {
  factory $NamedAPIResourceCopyWith(NamedAPIResource value, $Res Function(NamedAPIResource) _then) = _$NamedAPIResourceCopyWithImpl;
@useResult
$Res call({
 String? name, String? url
});




}
/// @nodoc
class _$NamedAPIResourceCopyWithImpl<$Res>
    implements $NamedAPIResourceCopyWith<$Res> {
  _$NamedAPIResourceCopyWithImpl(this._self, this._then);

  final NamedAPIResource _self;
  final $Res Function(NamedAPIResource) _then;

/// Create a copy of NamedAPIResource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? url = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _NamedAPIResource implements NamedAPIResource {
   _NamedAPIResource({required this.name, required this.url});
  factory _NamedAPIResource.fromJson(Map<String, dynamic> json) => _$NamedAPIResourceFromJson(json);

@override final  String? name;
@override final  String? url;

/// Create a copy of NamedAPIResource
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NamedAPIResourceCopyWith<_NamedAPIResource> get copyWith => __$NamedAPIResourceCopyWithImpl<_NamedAPIResource>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NamedAPIResourceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NamedAPIResource&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'NamedAPIResource(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$NamedAPIResourceCopyWith<$Res> implements $NamedAPIResourceCopyWith<$Res> {
  factory _$NamedAPIResourceCopyWith(_NamedAPIResource value, $Res Function(_NamedAPIResource) _then) = __$NamedAPIResourceCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? url
});




}
/// @nodoc
class __$NamedAPIResourceCopyWithImpl<$Res>
    implements _$NamedAPIResourceCopyWith<$Res> {
  __$NamedAPIResourceCopyWithImpl(this._self, this._then);

  final _NamedAPIResource _self;
  final $Res Function(_NamedAPIResource) _then;

/// Create a copy of NamedAPIResource
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? url = freezed,}) {
  return _then(_NamedAPIResource(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
