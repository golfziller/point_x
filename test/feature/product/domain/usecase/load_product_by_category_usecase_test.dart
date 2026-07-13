import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:point_x/feature/product/data/repositories/impl/product_repository_impl.dart';
import 'package:point_x/feature/product/data/repositories/provider/product_repository_provider.dart';
import 'package:point_x/feature/product/domain/entities/product.dart';
import 'package:point_x/feature/product/domain/entities/product_query.dart';
import 'package:point_x/feature/product/domain/usecase/load_product_by_category_usecase.dart';

// --- Mocks ---

class MockProductRepository extends Mock implements ProductRepositoryImpl {}

// --- Tests ---

void main() {
  group('loadProductByCategoryUseCase', () {
    late MockProductRepository mockProductRepository;

    setUp(() {
      mockProductRepository = MockProductRepository();
    });

    test('should return Right when  success', () async {
      // Arrange
      final expectedProducts = ProductGetAllList(
        products: [],
        total: 20,
        skip: 0,
        limit: 20,
      );
      final mockSlug = 'beauty';
      final mockQuery = ProductQuery();

      when(
        () => mockProductRepository.getProductsByCategory(mockSlug, mockQuery),
      ).thenAnswer((_) async => expectedProducts);

      final container = ProviderContainer.test(
        overrides: [
          productRepositoryProvider.overrideWith((_) => mockProductRepository),
        ],
      );
      // Act
      final result = await container.read(
        loadProductByCategoryUseCaseProvider(mockSlug, mockQuery).future,
      );

      // Assert
      expect(result.isSuccess, true);
      verify(
        () => mockProductRepository.getProductsByCategory(mockSlug, mockQuery),
      ).called(1);
    });
  });
}
