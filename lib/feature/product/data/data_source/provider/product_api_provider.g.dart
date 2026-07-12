// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productApi)
final productApiProvider = ProductApiProvider._();

final class ProductApiProvider
    extends $FunctionalProvider<ProductClient, ProductClient, ProductClient>
    with $Provider<ProductClient> {
  ProductApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productApiHash();

  @$internal
  @override
  $ProviderElement<ProductClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ProductClient create(Ref ref) {
    return productApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductClient>(value),
    );
  }
}

String _$productApiHash() => r'f1c7a7b008e4ebea469420e4d5dc0e267724882b';
