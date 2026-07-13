// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_product_by_category_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(loadProductByCategoryUseCase)
final loadProductByCategoryUseCaseProvider =
    LoadProductByCategoryUseCaseFamily._();

final class LoadProductByCategoryUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<Either<Failure, ProductGetAllList>>,
          Either<Failure, ProductGetAllList>,
          FutureOr<Either<Failure, ProductGetAllList>>
        >
    with
        $FutureModifier<Either<Failure, ProductGetAllList>>,
        $FutureProvider<Either<Failure, ProductGetAllList>> {
  LoadProductByCategoryUseCaseProvider._({
    required LoadProductByCategoryUseCaseFamily super.from,
    required (String, ProductQuery) super.argument,
  }) : super(
         retry: null,
         name: r'loadProductByCategoryUseCaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$loadProductByCategoryUseCaseHash();

  @override
  String toString() {
    return r'loadProductByCategoryUseCaseProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<Either<Failure, ProductGetAllList>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Either<Failure, ProductGetAllList>> create(Ref ref) {
    final argument = this.argument as (String, ProductQuery);
    return loadProductByCategoryUseCase(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is LoadProductByCategoryUseCaseProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$loadProductByCategoryUseCaseHash() =>
    r'41bcb8117d7a4cece671aeca0081250a9841a1e4';

final class LoadProductByCategoryUseCaseFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<Either<Failure, ProductGetAllList>>,
          (String, ProductQuery)
        > {
  LoadProductByCategoryUseCaseFamily._()
    : super(
        retry: null,
        name: r'loadProductByCategoryUseCaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LoadProductByCategoryUseCaseProvider call(String slug, ProductQuery query) =>
      LoadProductByCategoryUseCaseProvider._(
        argument: (slug, query),
        from: this,
      );

  @override
  String toString() => r'loadProductByCategoryUseCaseProvider';
}
