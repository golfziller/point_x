import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:point_x/feature/product/data/repositories/impl/product_repository_impl.dart';
import 'package:point_x/feature/product/data/repositories/provider/product_repository_provider.dart';
import 'package:point_x/feature/product/domain/entities/product.dart';
import 'package:point_x/feature/product/domain/usecase/load_product_detail_usecase.dart';

// --- Mocks ---

class MockProductRepository extends Mock implements ProductRepositoryImpl {}

// --- Tests ---

void main() {
  group('loadProductDetailUseCase', () {
    late MockProductRepository mockProductRepository;

    setUp(() {
      mockProductRepository = MockProductRepository();
    });

    test('should return Right when success', () async {
      // Arrange
      final expectedProduct = Product(
        id: 1,
        title: 'Test Product',
        description: 'A sample product',
        price: 99.99,
        rating: 4.5,
        images: ['https://example.com/image.png'],
      );

      when(
        () => mockProductRepository.getProductDetail('1'),
      ).thenAnswer((_) async => expectedProduct);

      final container = ProviderContainer.test(
        overrides: [
          productRepositoryProvider.overrideWith((_) => mockProductRepository),
        ],
      );

      // Act
      final result = await container.read(
        loadProductDetailUseCaseProvider(id: '1').future,
      );

      // Assert
      expect(result.isSuccess, true);
      expect(result.getValueSuccess(), expectedProduct);
      verify(() => mockProductRepository.getProductDetail('1')).called(1);
    });

    test('should return Left when repository throws', () async {
      // Arrange
      when(
        () => mockProductRepository.getProductDetail('1'),
      ).thenThrow(Exception('boom'));

      final container = ProviderContainer.test(
        overrides: [
          productRepositoryProvider.overrideWith((_) => mockProductRepository),
        ],
      );

      // Act
      final result = await container.read(
        loadProductDetailUseCaseProvider(id: '1').future,
      );

      // Assert
      expect(result.isError, true);
      expect(result.getValueError().message, contains('boom'));
      verify(() => mockProductRepository.getProductDetail('1')).called(1);
    });
  });
}
