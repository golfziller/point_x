// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_product_list_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(searchProductListUseCase)
final searchProductListUseCaseProvider = SearchProductListUseCaseFamily._();

final class SearchProductListUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<Either<Failure, ProductGetAllList>>,
          Either<Failure, ProductGetAllList>,
          FutureOr<Either<Failure, ProductGetAllList>>
        >
    with
        $FutureModifier<Either<Failure, ProductGetAllList>>,
        $FutureProvider<Either<Failure, ProductGetAllList>> {
  SearchProductListUseCaseProvider._({
    required SearchProductListUseCaseFamily super.from,
    required ProductQuery super.argument,
  }) : super(
         retry: null,
         name: r'searchProductListUseCaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchProductListUseCaseHash();

  @override
  String toString() {
    return r'searchProductListUseCaseProvider'
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
    return searchProductListUseCase(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchProductListUseCaseProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchProductListUseCaseHash() =>
    r'0b2675fa46e071eb1c55198ccb7ebb27f48cb792';

final class SearchProductListUseCaseFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<Either<Failure, ProductGetAllList>>,
          ProductQuery
        > {
  SearchProductListUseCaseFamily._()
    : super(
        retry: null,
        name: r'searchProductListUseCaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchProductListUseCaseProvider call(ProductQuery query) =>
      SearchProductListUseCaseProvider._(argument: query, from: this);

  @override
  String toString() => r'searchProductListUseCaseProvider';
}
