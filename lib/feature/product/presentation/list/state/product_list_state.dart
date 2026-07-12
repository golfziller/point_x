import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:point_x/feature/product/domain/entities/product.dart';
import 'package:point_x/feature/product/domain/entities/product_category.dart';

part 'product_list_state.freezed.dart';

@freezed
abstract class ProductListState with _$ProductListState {
  const factory ProductListState.initial() = _ProductListInitial;

  const factory ProductListState.initialized({
    required ProductListData data,
    @Default([]) List<ProductCategory> productCategories,
    String? currentSlugCategory,
  }) = _ProductListInitialized;
}

// สร้าง Class สำหรับเก็บ Data ทั้งหมด
@freezed
abstract class ProductListData with _$ProductListData {
  const factory ProductListData({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadMore,
    @Default(0) int skip,
    @Default(10) int limit,
    @Default(0) int total,
    @Default('asc') String order,
    @Default([]) List<Product> products,

    String? search,
  }) = _ProductListData;
}
