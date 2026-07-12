// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_product_detail_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(loadProductDetailUseCase)
final loadProductDetailUseCaseProvider = LoadProductDetailUseCaseFamily._();

final class LoadProductDetailUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<Either<Failure, Product>>,
          Either<Failure, Product>,
          FutureOr<Either<Failure, Product>>
        >
    with
        $FutureModifier<Either<Failure, Product>>,
        $FutureProvider<Either<Failure, Product>> {
  LoadProductDetailUseCaseProvider._({
    required LoadProductDetailUseCaseFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'loadProductDetailUseCaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$loadProductDetailUseCaseHash();

  @override
  String toString() {
    return r'loadProductDetailUseCaseProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Either<Failure, Product>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Either<Failure, Product>> create(Ref ref) {
    final argument = this.argument as String;
    return loadProductDetailUseCase(ref, id: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is LoadProductDetailUseCaseProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$loadProductDetailUseCaseHash() =>
    r'72596a18fd66924a9fc6cd71ae187ba89af28e1a';

final class LoadProductDetailUseCaseFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Either<Failure, Product>>, String> {
  LoadProductDetailUseCaseFamily._()
    : super(
        retry: null,
        name: r'loadProductDetailUseCaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LoadProductDetailUseCaseProvider call({required String id}) =>
      LoadProductDetailUseCaseProvider._(argument: id, from: this);

  @override
  String toString() => r'loadProductDetailUseCaseProvider';
}
