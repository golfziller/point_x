import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:point_x/feature/product/data/repositories/impl/product_repository_impl.dart';
import 'package:point_x/feature/product/data/repositories/provider/product_repository_provider.dart';
import 'package:point_x/feature/product/domain/entities/product_category.dart';
import 'package:point_x/feature/product/domain/usecase/load_product_category_usecase.dart';

// --- Mocks ---

class MockProductRepository extends Mock implements ProductRepositoryImpl {}

// --- Tests ---

void main() {
  group('loadProductCategoryUseCase', () {
    late MockProductRepository mockProductRepository;

    setUp(() {
      mockProductRepository = MockProductRepository();
    });

    test('should return Right when  success', () async {
      // Arrange
      final expectedProductCategory = [
        ProductCategory(slug: 'beauty', name: 'Beauty'),
      ];

      when(
        () => mockProductRepository.getProductCategory(),
      ).thenAnswer((_) async => expectedProductCategory);

      final container = ProviderContainer.test(
        overrides: [
          productRepositoryProvider.overrideWith((_) => mockProductRepository),
        ],
      );
      // Act
      final result = await container.read(
        loadProductCategoryUseCaseProvider.future,
      );

      // Assert
      expect(result.isSuccess, true);
      verify(() => mockProductRepository.getProductCategory()).called(1);
    });
  });
}
