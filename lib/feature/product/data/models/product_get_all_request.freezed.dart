// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_get_all_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductGetAllRequest {

 String get order; int get limit; int get skip; String get sortBy; String get select; String get q;
/// Create a copy of ProductGetAllRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductGetAllRequestCopyWith<ProductGetAllRequest> get copyWith => _$ProductGetAllRequestCopyWithImpl<ProductGetAllRequest>(this as ProductGetAllRequest, _$identity);

  /// Serializes this ProductGetAllRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductGetAllRequest&&(identical(other.order, order) || other.order == order)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.select, select) || other.select == select)&&(identical(other.q, q) || other.q == q));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,order,limit,skip,sortBy,select,q);

@override
String toString() {
  return 'ProductGetAllRequest(order: $order, limit: $limit, skip: $skip, sortBy: $sortBy, select: $select, q: $q)';
}


}

/// @nodoc
abstract mixin class $ProductGetAllRequestCopyWith<$Res>  {
  factory $ProductGetAllRequestCopyWith(ProductGetAllRequest value, $Res Function(ProductGetAllRequest) _then) = _$ProductGetAllRequestCopyWithImpl;
@useResult
$Res call({
 String order, int limit, int skip, String sortBy, String select, String q
});




}
/// @nodoc
class _$ProductGetAllRequestCopyWithImpl<$Res>
    implements $ProductGetAllRequestCopyWith<$Res> {
  _$ProductGetAllRequestCopyWithImpl(this._self, this._then);

  final ProductGetAllRequest _self;
  final $Res Function(ProductGetAllRequest) _then;

/// Create a copy of ProductGetAllRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? order = null,Object? limit = null,Object? skip = null,Object? sortBy = null,Object? select = null,Object? q = null,}) {
  return _then(_self.copyWith(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,select: null == select ? _self.select : select // ignore: cast_nullable_to_non_nullable
as String,q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductGetAllRequest].
extension ProductGetAllRequestPatterns on ProductGetAllRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductGetAllRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductGetAllRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductGetAllRequest value)  $default,){
final _that = this;
switch (_that) {
case _ProductGetAllRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductGetAllRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ProductGetAllRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String order,  int limit,  int skip,  String sortBy,  String select,  String q)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductGetAllRequest() when $default != null:
return $default(_that.order,_that.limit,_that.skip,_that.sortBy,_that.select,_that.q);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String order,  int limit,  int skip,  String sortBy,  String select,  String q)  $default,) {final _that = this;
switch (_that) {
case _ProductGetAllRequest():
return $default(_that.order,_that.limit,_that.skip,_that.sortBy,_that.select,_that.q);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String order,  int limit,  int skip,  String sortBy,  String select,  String q)?  $default,) {final _that = this;
switch (_that) {
case _ProductGetAllRequest() when $default != null:
return $default(_that.order,_that.limit,_that.skip,_that.sortBy,_that.select,_that.q);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductGetAllRequest implements ProductGetAllRequest {
  const _ProductGetAllRequest({this.order = "asc", this.limit = 20, required this.skip, this.sortBy = 'title', this.select = "title,price,description,rating,images,id", this.q = ''});
  factory _ProductGetAllRequest.fromJson(Map<String, dynamic> json) => _$ProductGetAllRequestFromJson(json);

@override@JsonKey() final  String order;
@override@JsonKey() final  int limit;
@override final  int skip;
@override@JsonKey() final  String sortBy;
@override@JsonKey() final  String select;
@override@JsonKey() final  String q;

/// Create a copy of ProductGetAllRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductGetAllRequestCopyWith<_ProductGetAllRequest> get copyWith => __$ProductGetAllRequestCopyWithImpl<_ProductGetAllRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductGetAllRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductGetAllRequest&&(identical(other.order, order) || other.order == order)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.select, select) || other.select == select)&&(identical(other.q, q) || other.q == q));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,order,limit,skip,sortBy,select,q);

@override
String toString() {
  return 'ProductGetAllRequest(order: $order, limit: $limit, skip: $skip, sortBy: $sortBy, select: $select, q: $q)';
}


}

/// @nodoc
abstract mixin class _$ProductGetAllRequestCopyWith<$Res> implements $ProductGetAllRequestCopyWith<$Res> {
  factory _$ProductGetAllRequestCopyWith(_ProductGetAllRequest value, $Res Function(_ProductGetAllRequest) _then) = __$ProductGetAllRequestCopyWithImpl;
@override @useResult
$Res call({
 String order, int limit, int skip, String sortBy, String select, String q
});




}
/// @nodoc
class __$ProductGetAllRequestCopyWithImpl<$Res>
    implements _$ProductGetAllRequestCopyWith<$Res> {
  __$ProductGetAllRequestCopyWithImpl(this._self, this._then);

  final _ProductGetAllRequest _self;
  final $Res Function(_ProductGetAllRequest) _then;

/// Create a copy of ProductGetAllRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? order = null,Object? limit = null,Object? skip = null,Object? sortBy = null,Object? select = null,Object? q = null,}) {
  return _then(_ProductGetAllRequest(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,select: null == select ? _self.select : select // ignore: cast_nullable_to_non_nullable
as String,q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
