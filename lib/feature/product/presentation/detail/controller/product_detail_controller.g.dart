// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductDetailController)
final productDetailControllerProvider = ProductDetailControllerProvider._();

final class ProductDetailControllerProvider
    extends $NotifierProvider<ProductDetailController, ProductDetailState> {
  ProductDetailControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productDetailControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productDetailControllerHash();

  @$internal
  @override
  ProductDetailController create() => ProductDetailController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductDetailState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductDetailState>(value),
    );
  }
}

String _$productDetailControllerHash() =>
    r'a32d2c40f0598875364201294c6904f58ddb708e';

abstract class _$ProductDetailController extends $Notifier<ProductDetailState> {
  ProductDetailState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<ProductDetailState, ProductDetailState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProductDetailState, ProductDetailState>,
              ProductDetailState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
