// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDetailResponse {

 String get title; int get id; double get rating; double get price; String get description; List<String> get images;
/// Create a copy of ProductDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailResponseCopyWith<ProductDetailResponse> get copyWith => _$ProductDetailResponseCopyWithImpl<ProductDetailResponse>(this as ProductDetailResponse, _$identity);

  /// Serializes this ProductDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailResponse&&(identical(other.title, title) || other.title == title)&&(identical(other.id, id) || other.id == id)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.images, images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,id,rating,price,description,const DeepCollectionEquality().hash(images));

@override
String toString() {
  return 'ProductDetailResponse(title: $title, id: $id, rating: $rating, price: $price, description: $description, images: $images)';
}


}

/// @nodoc
abstract mixin class $ProductDetailResponseCopyWith<$Res>  {
  factory $ProductDetailResponseCopyWith(ProductDetailResponse value, $Res Function(ProductDetailResponse) _then) = _$ProductDetailResponseCopyWithImpl;
@useResult
$Res call({
 String title, int id, double rating, double price, String description, List<String> images
});




}
/// @nodoc
class _$ProductDetailResponseCopyWithImpl<$Res>
    implements $ProductDetailResponseCopyWith<$Res> {
  _$ProductDetailResponseCopyWithImpl(this._self, this._then);

  final ProductDetailResponse _self;
  final $Res Function(ProductDetailResponse) _then;

/// Create a copy of ProductDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? id = null,Object? rating = null,Object? price = null,Object? description = null,Object? images = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductDetailResponse].
extension ProductDetailResponsePatterns on ProductDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProductDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  int id,  double rating,  double price,  String description,  List<String> images)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDetailResponse() when $default != null:
return $default(_that.title,_that.id,_that.rating,_that.price,_that.description,_that.images);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  int id,  double rating,  double price,  String description,  List<String> images)  $default,) {final _that = this;
switch (_that) {
case _ProductDetailResponse():
return $default(_that.title,_that.id,_that.rating,_that.price,_that.description,_that.images);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  int id,  double rating,  double price,  String description,  List<String> images)?  $default,) {final _that = this;
switch (_that) {
case _ProductDetailResponse() when $default != null:
return $default(_that.title,_that.id,_that.rating,_that.price,_that.description,_that.images);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDetailResponse implements ProductDetailResponse {
  const _ProductDetailResponse({required this.title, required this.id, required this.rating, required this.price, required this.description, required final  List<String> images}): _images = images;
  factory _ProductDetailResponse.fromJson(Map<String, dynamic> json) => _$ProductDetailResponseFromJson(json);

@override final  String title;
@override final  int id;
@override final  double rating;
@override final  double price;
@override final  String description;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}


/// Create a copy of ProductDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailResponseCopyWith<_ProductDetailResponse> get copyWith => __$ProductDetailResponseCopyWithImpl<_ProductDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetailResponse&&(identical(other.title, title) || other.title == title)&&(identical(other.id, id) || other.id == id)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._images, _images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,id,rating,price,description,const DeepCollectionEquality().hash(_images));

@override
String toString() {
  return 'ProductDetailResponse(title: $title, id: $id, rating: $rating, price: $price, description: $description, images: $images)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailResponseCopyWith<$Res> implements $ProductDetailResponseCopyWith<$Res> {
  factory _$ProductDetailResponseCopyWith(_ProductDetailResponse value, $Res Function(_ProductDetailResponse) _then) = __$ProductDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 String title, int id, double rating, double price, String description, List<String> images
});




}
/// @nodoc
class __$ProductDetailResponseCopyWithImpl<$Res>
    implements _$ProductDetailResponseCopyWith<$Res> {
  __$ProductDetailResponseCopyWithImpl(this._self, this._then);

  final _ProductDetailResponse _self;
  final $Res Function(_ProductDetailResponse) _then;

/// Create a copy of ProductDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? id = null,Object? rating = null,Object? price = null,Object? description = null,Object? images = null,}) {
  return _then(_ProductDetailResponse(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
