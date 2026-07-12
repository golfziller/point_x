// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_product_category_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(loadProductCategoryUseCase)
final loadProductCategoryUseCaseProvider =
    LoadProductCategoryUseCaseProvider._();

final class LoadProductCategoryUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<Either<Failure, List<ProductCategory>>>,
          Either<Failure, List<ProductCategory>>,
          FutureOr<Either<Failure, List<ProductCategory>>>
        >
    with
        $FutureModifier<Either<Failure, List<ProductCategory>>>,
        $FutureProvider<Either<Failure, List<ProductCategory>>> {
  LoadProductCategoryUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loadProductCategoryUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loadProductCategoryUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<Either<Failure, List<ProductCategory>>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Either<Failure, List<ProductCategory>>> create(Ref ref) {
    return loadProductCategoryUseCase(ref);
  }
}

String _$loadProductCategoryUseCaseHash() =>
    r'29f119d357c54644aa1bfa06f4ed65033572aa28';
