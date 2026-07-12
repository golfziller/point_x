// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductCategoryResponse {

 String get slug; String get name;
/// Create a copy of ProductCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCategoryResponseCopyWith<ProductCategoryResponse> get copyWith => _$ProductCategoryResponseCopyWithImpl<ProductCategoryResponse>(this as ProductCategoryResponse, _$identity);

  /// Serializes this ProductCategoryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCategoryResponse&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,name);

@override
String toString() {
  return 'ProductCategoryResponse(slug: $slug, name: $name)';
}


}

/// @nodoc
abstract mixin class $ProductCategoryResponseCopyWith<$Res>  {
  factory $ProductCategoryResponseCopyWith(ProductCategoryResponse value, $Res Function(ProductCategoryResponse) _then) = _$ProductCategoryResponseCopyWithImpl;
@useResult
$Res call({
 String slug, String name
});




}
/// @nodoc
class _$ProductCategoryResponseCopyWithImpl<$Res>
    implements $ProductCategoryResponseCopyWith<$Res> {
  _$ProductCategoryResponseCopyWithImpl(this._self, this._then);

  final ProductCategoryResponse _self;
  final $Res Function(ProductCategoryResponse) _then;

/// Create a copy of ProductCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? name = null,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductCategoryResponse].
extension ProductCategoryResponsePatterns on ProductCategoryResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductCategoryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductCategoryResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductCategoryResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProductCategoryResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductCategoryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProductCategoryResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductCategoryResponse() when $default != null:
return $default(_that.slug,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  String name)  $default,) {final _that = this;
switch (_that) {
case _ProductCategoryResponse():
return $default(_that.slug,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  String name)?  $default,) {final _that = this;
switch (_that) {
case _ProductCategoryResponse() when $default != null:
return $default(_that.slug,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductCategoryResponse implements ProductCategoryResponse {
  const _ProductCategoryResponse({required this.slug, required this.name});
  factory _ProductCategoryResponse.fromJson(Map<String, dynamic> json) => _$ProductCategoryResponseFromJson(json);

@override final  String slug;
@override final  String name;

/// Create a copy of ProductCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCategoryResponseCopyWith<_ProductCategoryResponse> get copyWith => __$ProductCategoryResponseCopyWithImpl<_ProductCategoryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductCategoryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductCategoryResponse&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,name);

@override
String toString() {
  return 'ProductCategoryResponse(slug: $slug, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ProductCategoryResponseCopyWith<$Res> implements $ProductCategoryResponseCopyWith<$Res> {
  factory _$ProductCategoryResponseCopyWith(_ProductCategoryResponse value, $Res Function(_ProductCategoryResponse) _then) = __$ProductCategoryResponseCopyWithImpl;
@override @useResult
$Res call({
 String slug, String name
});




}
/// @nodoc
class __$ProductCategoryResponseCopyWithImpl<$Res>
    implements _$ProductCategoryResponseCopyWith<$Res> {
  __$ProductCategoryResponseCopyWithImpl(this._self, this._then);

  final _ProductCategoryResponse _self;
  final $Res Function(_ProductCategoryResponse) _then;

/// Create a copy of ProductCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? name = null,}) {
  return _then(_ProductCategoryResponse(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
