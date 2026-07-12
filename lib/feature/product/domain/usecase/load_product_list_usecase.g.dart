// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_product_list_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(loadProductListUseCase)
final loadProductListUseCaseProvider = LoadProductListUseCaseFamily._();

final class LoadProductListUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<Either<Failure, ProductGetAllList>>,
          Either<Failure, ProductGetAllList>,
          FutureOr<Either<Failure, ProductGetAllList>>
        >
    with
        $FutureModifier<Either<Failure, ProductGetAllList>>,
        $FutureProvider<Either<Failure, ProductGetAllList>> {
  LoadProductListUseCaseProvider._({
    required LoadProductListUseCaseFamily super.from,
    required ProductQuery super.argument,
  }) : super(
         retry: null,
         name: r'loadProductListUseCaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$loadProductListUseCaseHash();

  @override
  String toString() {
    return r'loadProductListUseCaseProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Either<Failure, ProductGetAllList>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Either<Failure, ProductGetAllList>> create(Ref ref) {
    final argument = this.argument as ProductQuery;
    return loadProductListUseCase(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is LoadProductListUseCaseProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$loadProductListUseCaseHash() =>
    r'85540be80243d0939a311d2056c75ca99cb93473';

final class LoadProductListUseCaseFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<Either<Failure, ProductGetAllList>>,
          ProductQuery
        > {
  LoadProductListUseCaseFamily._()
    : super(
        retry: null,
        name: r'loadProductListUseCaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LoadProductListUseCaseProvider call(ProductQuery query) =>
      LoadProductListUseCaseProvider._(argument: query, from: this);

  @override
  String toString() => r'loadProductListUseCaseProvider';
}
