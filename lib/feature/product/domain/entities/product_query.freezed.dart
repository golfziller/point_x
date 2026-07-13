// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductQuery {

 int get skip; int get limit; String get order; String get sortBy; String get q;
/// Create a copy of ProductQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductQueryCopyWith<ProductQuery> get copyWith => _$ProductQueryCopyWithImpl<ProductQuery>(this as ProductQuery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductQuery&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.order, order) || other.order == order)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.q, q) || other.q == q));
}


@override
int get hashCode => Object.hash(runtimeType,skip,limit,order,sortBy,q);

@override
String toString() {
  return 'ProductQuery(skip: $skip, limit: $limit, order: $order, sortBy: $sortBy, q: $q)';
}


}

/// @nodoc
abstract mixin class $ProductQueryCopyWith<$Res>  {
  factory $ProductQueryCopyWith(ProductQuery value, $Res Function(ProductQuery) _then) = _$ProductQueryCopyWithImpl;
@useResult
$Res call({
 int skip, int limit, String order, String sortBy, String q
});




}
/// @nodoc
class _$ProductQueryCopyWithImpl<$Res>
    implements $ProductQueryCopyWith<$Res> {
  _$ProductQueryCopyWithImpl(this._self, this._then);

  final ProductQuery _self;
  final $Res Function(ProductQuery) _then;

/// Create a copy of ProductQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? skip = null,Object? limit = null,Object? order = null,Object? sortBy = null,Object? q = null,}) {
  return _then(_self.copyWith(
skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as String,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductQuery].
extension ProductQueryPatterns on ProductQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductQuery value)  $default,){
final _that = this;
switch (_that) {
case _ProductQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductQuery value)?  $default,){
final _that = this;
switch (_that) {
case _ProductQuery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int skip,  int limit,  String order,  String sortBy,  String q)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductQuery() when $default != null:
return $default(_that.skip,_that.limit,_that.order,_that.sortBy,_that.q);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int skip,  int limit,  String order,  String sortBy,  String q)  $default,) {final _that = this;
switch (_that) {
case _ProductQuery():
return $default(_that.skip,_that.limit,_that.order,_that.sortBy,_that.q);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int skip,  int limit,  String order,  String sortBy,  String q)?  $default,) {final _that = this;
switch (_that) {
case _ProductQuery() when $default != null:
return $default(_that.skip,_that.limit,_that.order,_that.sortBy,_that.q);case _:
  return null;

}
}

}

/// @nodoc


class _ProductQuery implements ProductQuery {
  const _ProductQuery({this.skip = 0, this.limit = 20, this.order = 'asc', this.sortBy = 'title', this.q = ''});
  

@override@JsonKey() final  int skip;
@override@JsonKey() final  int limit;
@override@JsonKey() final  String order;
@override@JsonKey() final  String sortBy;
@override@JsonKey() final  String q;

/// Create a copy of ProductQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductQueryCopyWith<_ProductQuery> get copyWith => __$ProductQueryCopyWithImpl<_ProductQuery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductQuery&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.order, order) || other.order == order)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.q, q) || other.q == q));
}


@override
int get hashCode => Object.hash(runtimeType,skip,limit,order,sortBy,q);

@override
String toString() {
  return 'ProductQuery(skip: $skip, limit: $limit, order: $order, sortBy: $sortBy, q: $q)';
}


}

/// @nodoc
abstract mixin class _$ProductQueryCopyWith<$Res> implements $ProductQueryCopyWith<$Res> {
  factory _$ProductQueryCopyWith(_ProductQuery value, $Res Function(_ProductQuery) _then) = __$ProductQueryCopyWithImpl;
@override @useResult
$Res call({
 int skip, int limit, String order, String sortBy, String q
});




}
/// @nodoc
class __$ProductQueryCopyWithImpl<$Res>
    implements _$ProductQueryCopyWith<$Res> {
  __$ProductQueryCopyWithImpl(this._self, this._then);

  final _ProductQuery _self;
  final $Res Function(_ProductQuery) _then;

/// Create a copy of ProductQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? skip = null,Object? limit = null,Object? order = null,Object? sortBy = null,Object? q = null,}) {
  return _then(_ProductQuery(
skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as String,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
