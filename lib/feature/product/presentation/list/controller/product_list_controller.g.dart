// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductListController)
final productListControllerProvider = ProductListControllerProvider._();

final class ProductListControllerProvider
    extends $NotifierProvider<ProductListController, ProductListState> {
  ProductListControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productListControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productListControllerHash();

  @$internal
  @override
  ProductListController create() => ProductListController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductListState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductListState>(value),
    );
  }
}

String _$productListControllerHash() =>
    r'ca8ec6e10661fa978ec368b486cf945e6d19de04';

abstract class _$ProductListController extends $Notifier<ProductListState> {
  ProductListState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<ProductListState, ProductListState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProductListState, ProductListState>,
              ProductListState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
