// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_get_all.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductGetAll {

 List<ProductDetail> get products; int get limit; int get skip; int get total;
/// Create a copy of ProductGetAll
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductGetAllCopyWith<ProductGetAll> get copyWith => _$ProductGetAllCopyWithImpl<ProductGetAll>(this as ProductGetAll, _$identity);

  /// Serializes this ProductGetAll to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductGetAll&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products),limit,skip,total);

@override
String toString() {
  return 'ProductGetAll(products: $products, limit: $limit, skip: $skip, total: $total)';
}


}

/// @nodoc
abstract mixin class $ProductGetAllCopyWith<$Res>  {
  factory $ProductGetAllCopyWith(ProductGetAll value, $Res Function(ProductGetAll) _then) = _$ProductGetAllCopyWithImpl;
@useResult
$Res call({
 List<ProductDetail> products, int limit, int skip, int total
});




}
/// @nodoc
class _$ProductGetAllCopyWithImpl<$Res>
    implements $ProductGetAllCopyWith<$Res> {
  _$ProductGetAllCopyWithImpl(this._self, this._then);

  final ProductGetAll _self;
  final $Res Function(ProductGetAll) _then;

/// Create a copy of ProductGetAll
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? limit = null,Object? skip = null,Object? total = null,}) {
  return _then(_self.copyWith(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductDetail>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductGetAll].
extension ProductGetAllPatterns on ProductGetAll {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductGetAll value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductGetAll() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductGetAll value)  $default,){
final _that = this;
switch (_that) {
case _ProductGetAll():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductGetAll value)?  $default,){
final _that = this;
switch (_that) {
case _ProductGetAll() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductDetail> products,  int limit,  int skip,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductGetAll() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductDetail> products,  int limit,  int skip,  int total)  $default,) {final _that = this;
switch (_that) {
case _ProductGetAll():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductDetail> products,  int limit,  int skip,  int total)?  $default,) {final _that = this;
switch (_that) {
case _ProductGetAll() when $default != null:
return $default(_that.products,_that.limit,_that.skip,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductGetAll implements ProductGetAll {
  const _ProductGetAll({required final  List<ProductDetail> products, required this.limit, required this.skip, required this.total}): _products = products;
  factory _ProductGetAll.fromJson(Map<String, dynamic> json) => _$ProductGetAllFromJson(json);

 final  List<ProductDetail> _products;
@override List<ProductDetail> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  int limit;
@override final  int skip;
@override final  int total;

/// Create a copy of ProductGetAll
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductGetAllCopyWith<_ProductGetAll> get copyWith => __$ProductGetAllCopyWithImpl<_ProductGetAll>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductGetAllToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductGetAll&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),limit,skip,total);

@override
String toString() {
  return 'ProductGetAll(products: $products, limit: $limit, skip: $skip, total: $total)';
}


}

/// @nodoc
abstract mixin class _$ProductGetAllCopyWith<$Res> implements $ProductGetAllCopyWith<$Res> {
  factory _$ProductGetAllCopyWith(_ProductGetAll value, $Res Function(_ProductGetAll) _then) = __$ProductGetAllCopyWithImpl;
@override @useResult
$Res call({
 List<ProductDetail> products, int limit, int skip, int total
});




}
/// @nodoc
class __$ProductGetAllCopyWithImpl<$Res>
    implements _$ProductGetAllCopyWith<$Res> {
  __$ProductGetAllCopyWithImpl(this._self, this._then);

  final _ProductGetAll _self;
  final $Res Function(_ProductGetAll) _then;

/// Create a copy of ProductGetAll
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = null,Object? limit = null,Object? skip = null,Object? total = null,}) {
  return _then(_ProductGetAll(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductDetail>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
