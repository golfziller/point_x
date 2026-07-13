import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:point_x/feature/product/domain/entities/product.dart';
import 'package:point_x/feature/product/domain/entities/product_category.dart';

part 'product_list_state.freezed.dart';

@freezed
abstract class ProductListState with _$ProductListState {
  const factory ProductListState.initial() = _ProductListInitial;
  const factory ProductListState.error() = _ProductListError;

  const factory ProductListState.initialized({
    required ProductListData data,
    @Default([]) List<ProductCategory> productCategories,
    ProductCategory? currentSelectedCategory,
  }) = _ProductListInitialized;
}

@freezed
abstract class ProductListData with _$ProductListData {
  const factory ProductListData({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadMore,
    required ProductGetAllList productsInfo,

    // @Default(0) int skip,
    // @Default(20) int limit,
    // @Default(0) int total,
    @Default([]) List<Product> products,
    @Default('asc') String order,

    String? search,
  }) = _ProductListData;
}
