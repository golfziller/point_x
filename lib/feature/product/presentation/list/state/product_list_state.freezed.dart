// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductListState()';
}


}

/// @nodoc
class $ProductListStateCopyWith<$Res>  {
$ProductListStateCopyWith(ProductListState _, $Res Function(ProductListState) __);
}


/// Adds pattern-matching-related methods to [ProductListState].
extension ProductListStatePatterns on ProductListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ProductListInitial value)?  initial,TResult Function( _ProductListInitialized value)?  initialized,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductListInitial() when initial != null:
return initial(_that);case _ProductListInitialized() when initialized != null:
return initialized(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ProductListInitial value)  initial,required TResult Function( _ProductListInitialized value)  initialized,}){
final _that = this;
switch (_that) {
case _ProductListInitial():
return initial(_that);case _ProductListInitialized():
return initialized(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ProductListInitial value)?  initial,TResult? Function( _ProductListInitialized value)?  initialized,}){
final _that = this;
switch (_that) {
case _ProductListInitial() when initial != null:
return initial(_that);case _ProductListInitialized() when initialized != null:
return initialized(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( ProductListData data,  List<ProductCategory> productCategories,  String? currentSlugCategory)?  initialized,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductListInitial() when initial != null:
return initial();case _ProductListInitialized() when initialized != null:
return initialized(_that.data,_that.productCategories,_that.currentSlugCategory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( ProductListData data,  List<ProductCategory> productCategories,  String? currentSlugCategory)  initialized,}) {final _that = this;
switch (_that) {
case _ProductListInitial():
return initial();case _ProductListInitialized():
return initialized(_that.data,_that.productCategories,_that.currentSlugCategory);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( ProductListData data,  List<ProductCategory> productCategories,  String? currentSlugCategory)?  initialized,}) {final _that = this;
switch (_that) {
case _ProductListInitial() when initial != null:
return initial();case _ProductListInitialized() when initialized != null:
return initialized(_that.data,_that.productCategories,_that.currentSlugCategory);case _:
  return null;

}
}

}

/// @nodoc


class _ProductListInitial implements ProductListState {
  const _ProductListInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductListInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductListState.initial()';
}


}




/// @nodoc


class _ProductListInitialized implements ProductListState {
  const _ProductListInitialized({required this.data, final  List<ProductCategory> productCategories = const [], this.currentSlugCategory}): _productCategories = productCategories;
  

 final  ProductListData data;
 final  List<ProductCategory> _productCategories;
@JsonKey() List<ProductCategory> get productCategories {
  if (_productCategories is EqualUnmodifiableListView) return _productCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productCategories);
}

 final  String? currentSlugCategory;

/// Create a copy of ProductListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductListInitializedCopyWith<_ProductListInitialized> get copyWith => __$ProductListInitializedCopyWithImpl<_ProductListInitialized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductListInitialized&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other._productCategories, _productCategories)&&(identical(other.currentSlugCategory, currentSlugCategory) || other.currentSlugCategory == currentSlugCategory));
}


@override
int get hashCode => Object.hash(runtimeType,data,const DeepCollectionEquality().hash(_productCategories),currentSlugCategory);

@override
String toString() {
  return 'ProductListState.initialized(data: $data, productCategories: $productCategories, currentSlugCategory: $currentSlugCategory)';
}


}

/// @nodoc
abstract mixin class _$ProductListInitializedCopyWith<$Res> implements $ProductListStateCopyWith<$Res> {
  factory _$ProductListInitializedCopyWith(_ProductListInitialized value, $Res Function(_ProductListInitialized) _then) = __$ProductListInitializedCopyWithImpl;
@useResult
$Res call({
 ProductListData data, List<ProductCategory> productCategories, String? currentSlugCategory
});


$ProductListDataCopyWith<$Res> get data;

}
/// @nodoc
class __$ProductListInitializedCopyWithImpl<$Res>
    implements _$ProductListInitializedCopyWith<$Res> {
  __$ProductListInitializedCopyWithImpl(this._self, this._then);

  final _ProductListInitialized _self;
  final $Res Function(_ProductListInitialized) _then;

/// Create a copy of ProductListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,Object? productCategories = null,Object? currentSlugCategory = freezed,}) {
  return _then(_ProductListInitialized(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProductListData,productCategories: null == productCategories ? _self._productCategories : productCategories // ignore: cast_nullable_to_non_nullable
as List<ProductCategory>,currentSlugCategory: freezed == currentSlugCategory ? _self.currentSlugCategory : currentSlugCategory // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ProductListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductListDataCopyWith<$Res> get data {
  
  return $ProductListDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
mixin _$ProductListData {

 bool get isLoading; bool get isLoadMore; int get skip; int get limit; int get total; String get order; List<Product> get products; String? get search;
/// Create a copy of ProductListData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductListDataCopyWith<ProductListData> get copyWith => _$ProductListDataCopyWithImpl<ProductListData>(this as ProductListData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListData&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadMore, isLoadMore) || other.isLoadMore == isLoadMore)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.order, order) || other.order == order)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.search, search) || other.search == search));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isLoadMore,skip,limit,total,order,const DeepCollectionEquality().hash(products),search);

@override
String toString() {
  return 'ProductListData(isLoading: $isLoading, isLoadMore: $isLoadMore, skip: $skip, limit: $limit, total: $total, order: $order, products: $products, search: $search)';
}


}

/// @nodoc
abstract mixin class $ProductListDataCopyWith<$Res>  {
  factory $ProductListDataCopyWith(ProductListData value, $Res Function(ProductListData) _then) = _$ProductListDataCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isLoadMore, int skip, int limit, int total, String order, List<Product> products, String? search
});




}
/// @nodoc
class _$ProductListDataCopyWithImpl<$Res>
    implements $ProductListDataCopyWith<$Res> {
  _$ProductListDataCopyWithImpl(this._self, this._then);

  final ProductListData _self;
  final $Res Function(ProductListData) _then;

/// Create a copy of ProductListData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isLoadMore = null,Object? skip = null,Object? limit = null,Object? total = null,Object? order = null,Object? products = null,Object? search = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadMore: null == isLoadMore ? _self.isLoadMore : isLoadMore // ignore: cast_nullable_to_non_nullable
as bool,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductListData].
extension ProductListDataPatterns on ProductListData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductListData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductListData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductListData value)  $default,){
final _that = this;
switch (_that) {
case _ProductListData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductListData value)?  $default,){
final _that = this;
switch (_that) {
case _ProductListData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isLoadMore,  int skip,  int limit,  int total,  String order,  List<Product> products,  String? search)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductListData() when $default != null:
return $default(_that.isLoading,_that.isLoadMore,_that.skip,_that.limit,_that.total,_that.order,_that.products,_that.search);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isLoadMore,  int skip,  int limit,  int total,  String order,  List<Product> products,  String? search)  $default,) {final _that = this;
switch (_that) {
case _ProductListData():
return $default(_that.isLoading,_that.isLoadMore,_that.skip,_that.limit,_that.total,_that.order,_that.products,_that.search);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isLoadMore,  int skip,  int limit,  int total,  String order,  List<Product> products,  String? search)?  $default,) {final _that = this;
switch (_that) {
case _ProductListData() when $default != null:
return $default(_that.isLoading,_that.isLoadMore,_that.skip,_that.limit,_that.total,_that.order,_that.products,_that.search);case _:
  return null;

}
}

}

/// @nodoc


class _ProductListData implements ProductListData {
  const _ProductListData({this.isLoading = false, this.isLoadMore = false, this.skip = 0, this.limit = 10, this.total = 0, this.order = 'asc', final  List<Product> products = const [], this.search}): _products = products;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadMore;
@override@JsonKey() final  int skip;
@override@JsonKey() final  int limit;
@override@JsonKey() final  int total;
@override@JsonKey() final  String order;
 final  List<Product> _products;
@override@JsonKey() List<Product> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  String? search;

/// Create a copy of ProductListData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductListDataCopyWith<_ProductListData> get copyWith => __$ProductListDataCopyWithImpl<_ProductListData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductListData&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadMore, isLoadMore) || other.isLoadMore == isLoadMore)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.order, order) || other.order == order)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.search, search) || other.search == search));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isLoadMore,skip,limit,total,order,const DeepCollectionEquality().hash(_products),search);

@override
String toString() {
  return 'ProductListData(isLoading: $isLoading, isLoadMore: $isLoadMore, skip: $skip, limit: $limit, total: $total, order: $order, products: $products, search: $search)';
}


}

/// @nodoc
abstract mixin class _$ProductListDataCopyWith<$Res> implements $ProductListDataCopyWith<$Res> {
  factory _$ProductListDataCopyWith(_ProductListData value, $Res Function(_ProductListData) _then) = __$ProductListDataCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isLoadMore, int skip, int limit, int total, String order, List<Product> products, String? search
});




}
/// @nodoc
class __$ProductListDataCopyWithImpl<$Res>
    implements _$ProductListDataCopyWith<$Res> {
  __$ProductListDataCopyWithImpl(this._self, this._then);

  final _ProductListData _self;
  final $Res Function(_ProductListData) _then;

/// Create a copy of ProductListData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isLoadMore = null,Object? skip = null,Object? limit = null,Object? total = null,Object? order = null,Object? products = null,Object? search = freezed,}) {
  return _then(_ProductListData(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadMore: null == isLoadMore ? _self.isLoadMore : isLoadMore // ignore: cast_nullable_to_non_nullable
as bool,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
