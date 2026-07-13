// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_get_all_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductGetAllResponse {

 List<ProductDetailResponse> get products; int get limit; int get skip; int get total;
/// Create a copy of ProductGetAllResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductGetAllResponseCopyWith<ProductGetAllResponse> get copyWith => _$ProductGetAllResponseCopyWithImpl<ProductGetAllResponse>(this as ProductGetAllResponse, _$identity);

  /// Serializes this ProductGetAllResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductGetAllResponse&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products),limit,skip,total);

@override
String toString() {
  return 'ProductGetAllResponse(products: $products, limit: $limit, skip: $skip, total: $total)';
}


}

/// @nodoc
abstract mixin class $ProductGetAllResponseCopyWith<$Res>  {
  factory $ProductGetAllResponseCopyWith(ProductGetAllResponse value, $Res Function(ProductGetAllResponse) _then) = _$ProductGetAllResponseCopyWithImpl;
@useResult
$Res call({
 List<ProductDetailResponse> products, int limit, int skip, int total
});




}
/// @nodoc
class _$ProductGetAllResponseCopyWithImpl<$Res>
    implements $ProductGetAllResponseCopyWith<$Res> {
  _$ProductGetAllResponseCopyWithImpl(this._self, this._then);

  final ProductGetAllResponse _self;
  final $Res Function(ProductGetAllResponse) _then;

/// Create a copy of ProductGetAllResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? limit = null,Object? skip = null,Object? total = null,}) {
  return _then(_self.copyWith(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductDetailResponse>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductGetAllResponse].
extension ProductGetAllResponsePatterns on ProductGetAllResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductGetAllResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductGetAllResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductGetAllResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProductGetAllResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductGetAllResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProductGetAllResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductDetailResponse> products,  int limit,  int skip,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductGetAllResponse() when $default != null:
return $default(_that.products,_that.limit,_that.skip,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductDetailResponse> products,  int limit,  int skip,  int total)  $default,) {final _that = this;
switch (_that) {
case _ProductGetAllResponse():
return $default(_that.products,_that.limit,_that.skip,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductDetailResponse> products,  int limit,  int skip,  int total)?  $default,) {final _that = this;
switch (_that) {
case _ProductGetAllResponse() when $default != null:
return $default(_that.products,_that.limit,_that.skip,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductGetAllResponse implements ProductGetAllResponse {
  const _ProductGetAllResponse({required final  List<ProductDetailResponse> products, required this.limit, required this.skip, required this.total}): _products = products;
  factory _ProductGetAllResponse.fromJson(Map<String, dynamic> json) => _$ProductGetAllResponseFromJson(json);

 final  List<ProductDetailResponse> _products;
@override List<ProductDetailResponse> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  int limit;
@override final  int skip;
@override final  int total;

/// Create a copy of ProductGetAllResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductGetAllResponseCopyWith<_ProductGetAllResponse> get copyWith => __$ProductGetAllResponseCopyWithImpl<_ProductGetAllResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductGetAllResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductGetAllResponse&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),limit,skip,total);

@override
String toString() {
  return 'ProductGetAllResponse(products: $products, limit: $limit, skip: $skip, total: $total)';
}


}

/// @nodoc
abstract mixin class _$ProductGetAllResponseCopyWith<$Res> implements $ProductGetAllResponseCopyWith<$Res> {
  factory _$ProductGetAllResponseCopyWith(_ProductGetAllResponse value, $Res Function(_ProductGetAllResponse) _then) = __$ProductGetAllResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ProductDetailResponse> products, int limit, int skip, int total
});




}
/// @nodoc
class __$ProductGetAllResponseCopyWithImpl<$Res>
    implements _$ProductGetAllResponseCopyWith<$Res> {
  __$ProductGetAllResponseCopyWithImpl(this._self, this._then);

  final _ProductGetAllResponse _self;
  final $Res Function(_ProductGetAllResponse) _then;

/// Create a copy of ProductGetAllResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = null,Object? limit = null,Object? skip = null,Object? total = null,}) {
  return _then(_ProductGetAllResponse(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductDetailResponse>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
