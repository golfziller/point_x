// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductDetailController)
final productDetailControllerProvider = ProductDetailControllerFamily._();

final class ProductDetailControllerProvider
    extends $NotifierProvider<ProductDetailController, ProductDetailState> {
  ProductDetailControllerProvider._({
    required ProductDetailControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'productDetailControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productDetailControllerHash();

  @override
  String toString() {
    return r'productDetailControllerProvider'
        ''
        '($argument)';
  }

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

  @override
  bool operator ==(Object other) {
    return other is ProductDetailControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productDetailControllerHash() =>
    r'05720a6ca6c89b5dbab2abf23c9b571c6ccaf5f4';

final class ProductDetailControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ProductDetailController,
          ProductDetailState,
          ProductDetailState,
          ProductDetailState,
          String
        > {
  ProductDetailControllerFamily._()
    : super(
        retry: null,
        name: r'productDetailControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductDetailControllerProvider call(String id) =>
      ProductDetailControllerProvider._(argument: id, from: this);

  @override
  String toString() => r'productDetailControllerProvider';
}

abstract class _$ProductDetailController extends $Notifier<ProductDetailState> {
  late final _$args = ref.$arg as String;
  String get id => _$args;

  ProductDetailState build(String id);
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
    return element.handleCreate(ref, () => build(_$args));
  }
}
