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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ProductListInitial value)?  initial,TResult Function( _ProductListError value)?  error,TResult Function( _ProductListInitialized value)?  initialized,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductListInitial() when initial != null:
return initial(_that);case _ProductListError() when error != null:
return error(_that);case _ProductListInitialized() when initialized != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ProductListInitial value)  initial,required TResult Function( _ProductListError value)  error,required TResult Function( _ProductListInitialized value)  initialized,}){
final _that = this;
switch (_that) {
case _ProductListInitial():
return initial(_that);case _ProductListError():
return error(_that);case _ProductListInitialized():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ProductListInitial value)?  initial,TResult? Function( _ProductListError value)?  error,TResult? Function( _ProductListInitialized value)?  initialized,}){
final _that = this;
switch (_that) {
case _ProductListInitial() when initial != null:
return initial(_that);case _ProductListError() when error != null:
return error(_that);case _ProductListInitialized() when initialized != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  error,TResult Function( ProductListData data,  List<ProductCategory> productCategories,  ProductCategory? currentSelectedCategory)?  initialized,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductListInitial() when initial != null:
return initial();case _ProductListError() when error != null:
return error();case _ProductListInitialized() when initialized != null:
return initialized(_that.data,_that.productCategories,_that.currentSelectedCategory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  error,required TResult Function( ProductListData data,  List<ProductCategory> productCategories,  ProductCategory? currentSelectedCategory)  initialized,}) {final _that = this;
switch (_that) {
case _ProductListInitial():
return initial();case _ProductListError():
return error();case _ProductListInitialized():
return initialized(_that.data,_that.productCategories,_that.currentSelectedCategory);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  error,TResult? Function( ProductListData data,  List<ProductCategory> productCategories,  ProductCategory? currentSelectedCategory)?  initialized,}) {final _that = this;
switch (_that) {
case _ProductListInitial() when initial != null:
return initial();case _ProductListError() when error != null:
return error();case _ProductListInitialized() when initialized != null:
return initialized(_that.data,_that.productCategories,_that.currentSelectedCategory);case _:
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


class _ProductListError implements ProductListState {
  const _ProductListError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductListError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductListState.error()';
}


}




/// @nodoc


class _ProductListInitialized implements ProductListState {
  const _ProductListInitialized({required this.data, final  List<ProductCategory> productCategories = const [], this.currentSelectedCategory}): _productCategories = productCategories;
  

 final  ProductListData data;
 final  List<ProductCategory> _productCategories;
@JsonKey() List<ProductCategory> get productCategories {
  if (_productCategories is EqualUnmodifiableListView) return _productCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productCategories);
}

 final  ProductCategory? currentSelectedCategory;

/// Create a copy of ProductListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductListInitializedCopyWith<_ProductListInitialized> get copyWith => __$ProductListInitializedCopyWithImpl<_ProductListInitialized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductListInitialized&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other._productCategories, _productCategories)&&(identical(other.currentSelectedCategory, currentSelectedCategory) || other.currentSelectedCategory == currentSelectedCategory));
}


@override
int get hashCode => Object.hash(runtimeType,data,const DeepCollectionEquality().hash(_productCategories),currentSelectedCategory);

@override
String toString() {
  return 'ProductListState.initialized(data: $data, productCategories: $productCategories, currentSelectedCategory: $currentSelectedCategory)';
}


}

/// @nodoc
abstract mixin class _$ProductListInitializedCopyWith<$Res> implements $ProductListStateCopyWith<$Res> {
  factory _$ProductListInitializedCopyWith(_ProductListInitialized value, $Res Function(_ProductListInitialized) _then) = __$ProductListInitializedCopyWithImpl;
@useResult
$Res call({
 ProductListData data, List<ProductCategory> productCategories, ProductCategory? currentSelectedCategory
});


$ProductListDataCopyWith<$Res> get data;$ProductCategoryCopyWith<$Res>? get currentSelectedCategory;

}
/// @nodoc
class __$ProductListInitializedCopyWithImpl<$Res>
    implements _$ProductListInitializedCopyWith<$Res> {
  __$ProductListInitializedCopyWithImpl(this._self, this._then);

  final _ProductListInitialized _self;
  final $Res Function(_ProductListInitialized) _then;

/// Create a copy of ProductListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,Object? productCategories = null,Object? currentSelectedCategory = freezed,}) {
  return _then(_ProductListInitialized(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProductListData,productCategories: null == productCategories ? _self._productCategories : productCategories // ignore: cast_nullable_to_non_nullable
as List<ProductCategory>,currentSelectedCategory: freezed == currentSelectedCategory ? _self.currentSelectedCategory : currentSelectedCategory // ignore: cast_nullable_to_non_nullable
as ProductCategory?,
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
}/// Create a copy of ProductListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCategoryCopyWith<$Res>? get currentSelectedCategory {
    if (_self.currentSelectedCategory == null) {
    return null;
  }

  return $ProductCategoryCopyWith<$Res>(_self.currentSelectedCategory!, (value) {
    return _then(_self.copyWith(currentSelectedCategory: value));
  });
}
}

/// @nodoc
mixin _$ProductListData {

 bool get isLoading; bool get isLoadMore; ProductGetAllList get productsInfo; List<Product> get products; String get order; String? get search;
/// Create a copy of ProductListData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductListDataCopyWith<ProductListData> get copyWith => _$ProductListDataCopyWithImpl<ProductListData>(this as ProductListData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListData&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadMore, isLoadMore) || other.isLoadMore == isLoadMore)&&(identical(other.productsInfo, productsInfo) || other.productsInfo == productsInfo)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.order, order) || other.order == order)&&(identical(other.search, search) || other.search == search));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isLoadMore,productsInfo,const DeepCollectionEquality().hash(products),order,search);

@override
String toString() {
  return 'ProductListData(isLoading: $isLoading, isLoadMore: $isLoadMore, productsInfo: $productsInfo, products: $products, order: $order, search: $search)';
}


}

/// @nodoc
abstract mixin class $ProductListDataCopyWith<$Res>  {
  factory $ProductListDataCopyWith(ProductListData value, $Res Function(ProductListData) _then) = _$ProductListDataCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isLoadMore, ProductGetAllList productsInfo, List<Product> products, String order, String? search
});


$ProductGetAllListCopyWith<$Res> get productsInfo;

}
/// @nodoc
class _$ProductListDataCopyWithImpl<$Res>
    implements $ProductListDataCopyWith<$Res> {
  _$ProductListDataCopyWithImpl(this._self, this._then);

  final ProductListData _self;
  final $Res Function(ProductListData) _then;

/// Create a copy of ProductListData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isLoadMore = null,Object? productsInfo = null,Object? products = null,Object? order = null,Object? search = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadMore: null == isLoadMore ? _self.isLoadMore : isLoadMore // ignore: cast_nullable_to_non_nullable
as bool,productsInfo: null == productsInfo ? _self.productsInfo : productsInfo // ignore: cast_nullable_to_non_nullable
as ProductGetAllList,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as String,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ProductListData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductGetAllListCopyWith<$Res> get productsInfo {
  
  return $ProductGetAllListCopyWith<$Res>(_self.productsInfo, (value) {
    return _then(_self.copyWith(productsInfo: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isLoadMore,  ProductGetAllList productsInfo,  List<Product> products,  String order,  String? search)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductListData() when $default != null:
return $default(_that.isLoading,_that.isLoadMore,_that.productsInfo,_that.products,_that.order,_that.search);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isLoadMore,  ProductGetAllList productsInfo,  List<Product> products,  String order,  String? search)  $default,) {final _that = this;
switch (_that) {
case _ProductListData():
return $default(_that.isLoading,_that.isLoadMore,_that.productsInfo,_that.products,_that.order,_that.search);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isLoadMore,  ProductGetAllList productsInfo,  List<Product> products,  String order,  String? search)?  $default,) {final _that = this;
switch (_that) {
case _ProductListData() when $default != null:
return $default(_that.isLoading,_that.isLoadMore,_that.productsInfo,_that.products,_that.order,_that.search);case _:
  return null;

}
}

}

/// @nodoc


class _ProductListData implements ProductListData {
  const _ProductListData({this.isLoading = false, this.isLoadMore = false, required this.productsInfo, final  List<Product> products = const [], this.order = 'asc', this.search}): _products = products;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadMore;
@override final  ProductGetAllList productsInfo;
 final  List<Product> _products;
@override@JsonKey() List<Product> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override@JsonKey() final  String order;
@override final  String? search;

/// Create a copy of ProductListData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductListDataCopyWith<_ProductListData> get copyWith => __$ProductListDataCopyWithImpl<_ProductListData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductListData&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadMore, isLoadMore) || other.isLoadMore == isLoadMore)&&(identical(other.productsInfo, productsInfo) || other.productsInfo == productsInfo)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.order, order) || other.order == order)&&(identical(other.search, search) || other.search == search));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isLoadMore,productsInfo,const DeepCollectionEquality().hash(_products),order,search);

@override
String toString() {
  return 'ProductListData(isLoading: $isLoading, isLoadMore: $isLoadMore, productsInfo: $productsInfo, products: $products, order: $order, search: $search)';
}


}

/// @nodoc
abstract mixin class _$ProductListDataCopyWith<$Res> implements $ProductListDataCopyWith<$Res> {
  factory _$ProductListDataCopyWith(_ProductListData value, $Res Function(_ProductListData) _then) = __$ProductListDataCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isLoadMore, ProductGetAllList productsInfo, List<Product> products, String order, String? search
});


@override $ProductGetAllListCopyWith<$Res> get productsInfo;

}
/// @nodoc
class __$ProductListDataCopyWithImpl<$Res>
    implements _$ProductListDataCopyWith<$Res> {
  __$ProductListDataCopyWithImpl(this._self, this._then);

  final _ProductListData _self;
  final $Res Function(_ProductListData) _then;

/// Create a copy of ProductListData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isLoadMore = null,Object? productsInfo = null,Object? products = null,Object? order = null,Object? search = freezed,}) {
  return _then(_ProductListData(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadMore: null == isLoadMore ? _self.isLoadMore : isLoadMore // ignore: cast_nullable_to_non_nullable
as bool,productsInfo: null == productsInfo ? _self.productsInfo : productsInfo // ignore: cast_nullable_to_non_nullable
as ProductGetAllList,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as String,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ProductListData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductGetAllListCopyWith<$Res> get productsInfo {
  
  return $ProductGetAllListCopyWith<$Res>(_self.productsInfo, (value) {
    return _then(_self.copyWith(productsInfo: value));
  });
}
}

// dart format on
