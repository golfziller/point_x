import 'package:flutter_test/flutter_test.dart';
import 'package:point_x/core/helper/either_mini.dart';
import 'package:point_x/core/helper/failure.dart';
import 'package:point_x/feature/product/domain/entities/product.dart';
import 'package:point_x/feature/product/domain/entities/product_category.dart';
import 'package:point_x/feature/product/domain/entities/product_query.dart';
import 'package:point_x/feature/product/domain/usecase/load_product_category_usecase.dart';
import 'package:point_x/feature/product/domain/usecase/load_product_by_category_usecase.dart';
import 'package:point_x/feature/product/domain/usecase/load_product_list_usecase.dart';
import 'package:point_x/feature/product/presentation/list/controller/product_list_controller.dart';
import 'package:point_x/feature/product/presentation/list/state/product_list_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

void main() {
  late ProviderContainer container;

  // ---- Mock data ----
  final mockProduct1 = Product(
    id: 1,
    title: 'title1',
    description: 'desc1',
    price: 10,
    rating: 4.5,
    images: const [],
  );
  final mockProduct2 = Product(
    id: 2,
    title: 'title2',
    description: 'desc2',
    price: 20,
    rating: 3.5,
    images: const [],
  );
  final mockCategoryA = const ProductCategory(slug: 'a', name: 'Category A');
  final mockCategoryB = const ProductCategory(slug: 'b', name: 'Category B');

  // query ที่ _loadProductAll ใช้ตอนเรียกครั้งแรก (skip=0, limit=20 ตาม default ของ ProductListData())
  const initialQuery = ProductQuery(skip: 0, limit: 20);

  // tearDown(() => container.dispose());

  // Helper: สร้าง container พร้อม override ให้ _initialData โหลดสำเร็จ แบบพื้นฐาน (ไม่มี category, product 2 ตัว, total=2)
  ProviderContainer buildContainerWithInitialSuccess({
    List<Product> products = const [],
    int total = 0,
    List<ProductCategory> categories = const [],
    List<Override> extraOverrides = const [],
  }) {
    return ProviderContainer.test(
      overrides: [
        loadProductCategoryUseCaseProvider.overrideWith(
          (ref) async => right(categories),
        ),
        loadProductListUseCaseProvider(initialQuery).overrideWith(
          (ref) async => right(
            ProductGetAllList(
              products: products,
              total: total,
              skip: 0,
              limit: 20,
            ),
          ),
        ),
        ...extraOverrides,
      ],
    );
  }

  group('build / _initialData', () {
    test(
      'เมื่อโหลด category และ product สำเร็จทั้งคู่ State ต้องเป็น initialized พร้อมข้อมูลครบ',
      () async {
        container = buildContainerWithInitialSuccess(
          products: [mockProduct1, mockProduct2],
          total: 2,
          categories: [mockCategoryA, mockCategoryB],
        );
        container.listen(productListControllerProvider, (_, __) {});

        await pumpEventQueue();

        final state = container.read(productListControllerProvider);

        expect(
          state,
          ProductListState.initialized(
            data: ProductListData(
              products: [mockProduct1, mockProduct2],
              productsInfo: ProductGetAllList(
                products: [mockProduct1, mockProduct2],
                total: 2,
                skip: 0,
                limit: 20,
              ),
            ),
            productCategories: [mockCategoryA, mockCategoryB],
          ),
        );
      },
    );

    test(
      'เมื่อโหลด category ไม่สำเร็จ (Left) แต่ product สำเร็จ productCategories ต้องเป็น [] และ state ยัง initialized',
      () async {
        container = ProviderContainer.test(
          overrides: [
            loadProductCategoryUseCaseProvider.overrideWith(
              (ref) async => left(Failure()),
            ),
            loadProductListUseCaseProvider(initialQuery).overrideWith(
              (ref) async => right(
                ProductGetAllList(
                  products: [mockProduct1],
                  total: 1,
                  skip: 0,
                  limit: 20,
                ),
              ),
            ),
          ],
        );
        container.listen(productListControllerProvider, (_, __) {});

        await pumpEventQueue();

        final state = container.read(productListControllerProvider);

        state.maybeMap(
          initialized: (s) {
            expect(s.productCategories, isEmpty);
            expect(s.data.products, [mockProduct1]);
          },
          orElse: () => fail('ควรเป็น initialized state'),
        );
      },
    );

    test('เมื่อโหลด product ไม่สำเร็จ (Left) State ต้องเป็น error', () async {
      container = ProviderContainer.test(
        overrides: [
          loadProductCategoryUseCaseProvider.overrideWith(
            (ref) async => right([mockCategoryA]),
          ),
          loadProductListUseCaseProvider(
            initialQuery,
          ).overrideWith((ref) async => left(Failure())),
        ],
      );
      container.listen(productListControllerProvider, (_, __) {});

      await pumpEventQueue();

      expect(
        container.read(productListControllerProvider),
        const ProductListState.error(),
      );
    });
  });

  group('onSearchChange', () {
    test(
      'เมื่อเปลี่ยนคำค้นหา state.data.search ต้องอัปเดตตามค่าที่ส่งเข้าไป',
      () async {
        container = buildContainerWithInitialSuccess(
          products: [mockProduct1],
          total: 1,
        );
        container.listen(productListControllerProvider, (_, __) {});
        await pumpEventQueue();

        final controller = container.read(
          productListControllerProvider.notifier,
        );
        await controller.onSearchChange('phone');

        final state = container.read(productListControllerProvider);
        state.maybeMap(
          initialized: (s) => expect(s.data.search, 'phone'),
          orElse: () => fail('ควรเป็น initialized state'),
        );
      },
    );

    test('เมื่อส่งค่า null เข้ามา search ต้องไม่เปลี่ยนแปลง', () async {
      container = buildContainerWithInitialSuccess(
        products: [mockProduct1],
        total: 1,
      );
      container.listen(productListControllerProvider, (_, __) {});
      await pumpEventQueue();

      final controller = container.read(productListControllerProvider.notifier);
      await controller.onSearchChange('phone');
      await controller.onSearchChange(null);

      final state = container.read(productListControllerProvider);
      state.maybeMap(
        initialized: (s) => expect(s.data.search, 'phone'),
        orElse: () => fail('ควรเป็น initialized state'),
      );
    });
  });

  group('onSelectedCategory', () {
    test(
      'เมื่อเลือก category ที่ยังไม่ถูกเลือก ต้อง set currentSelectedCategory และเรียกโหลดสินค้าตาม category',
      () async {
        container = ProviderContainer.test(
          overrides: [
            loadProductCategoryUseCaseProvider.overrideWith(
              (ref) async => right([mockCategoryA]),
            ),
            loadProductListUseCaseProvider(initialQuery).overrideWith(
              (ref) async => right(
                ProductGetAllList(
                  products: const [],
                  total: 0,
                  skip: 0,
                  limit: 20,
                ),
              ),
            ),
            loadProductByCategoryUseCaseProvider(
              mockCategoryA.slug,
              const ProductQuery(skip: 0, limit: 20),
            ).overrideWith(
              (ref) async => right(
                ProductGetAllList(
                  products: [mockProduct1],
                  total: 1,
                  skip: 0,
                  limit: 20,
                ),
              ),
            ),
          ],
        );
        container.listen(productListControllerProvider, (_, __) {});
        await pumpEventQueue();

        final controller = container.read(
          productListControllerProvider.notifier,
        );
        await controller.onSelectedCategory(mockCategoryA);

        final state = container.read(productListControllerProvider);
        state.maybeMap(
          initialized: (s) {
            expect(s.currentSelectedCategory, mockCategoryA);
            expect(s.data.products, [mockProduct1]);
          },
          orElse: () => fail('ควรเป็น initialized state'),
        );
      },
    );

    test(
      'เมื่อเลือก category เดิมซ้ำ ต้องยกเลิกการเลือก (currentSelectedCategory = null) และโหลดสินค้าทั้งหมดแทน',
      () async {
        container = ProviderContainer.test(
          overrides: [
            loadProductCategoryUseCaseProvider.overrideWith(
              (ref) async => right([mockCategoryA]),
            ),
            loadProductListUseCaseProvider(initialQuery).overrideWith(
              (ref) async => right(
                ProductGetAllList(
                  products: const [],
                  total: 0,
                  skip: 0,
                  limit: 20,
                ),
              ),
            ),
            loadProductByCategoryUseCaseProvider(
              mockCategoryA.slug,
              const ProductQuery(skip: 0, limit: 20),
            ).overrideWith(
              (ref) async => right(
                ProductGetAllList(
                  products: [mockProduct1],
                  total: 1,
                  skip: 0,
                  limit: 20,
                ),
              ),
            ),
          ],
        );
        container.listen(productListControllerProvider, (_, __) {});
        await pumpEventQueue();

        final controller = container.read(
          productListControllerProvider.notifier,
        );
        await controller.onSelectedCategory(mockCategoryA); // เลือกครั้งแรก

        // override fetchProductAll (loadProductListUseCaseProvider) รอบสอง ให้คืนสินค้าอีกชุด
        // ใช้ provider เดิมที่ override ไว้แล้วตอนสร้าง container ได้เลย เพราะ query เหมือนเดิม (skip=0, limit=20)

        await controller.onSelectedCategory(mockCategoryA); // กดซ้ำ = ยกเลิก

        final state = container.read(productListControllerProvider);
        state.maybeMap(
          initialized: (s) => expect(s.currentSelectedCategory, isNull),
          orElse: () => fail('ควรเป็น initialized state'),
        );
      },
    );
  });

  group('loadProductMore', () {
    test(
      'เมื่อโหลดครบแล้ว (products.length >= total) ต้อง guard ไม่ยิง provider ซ้ำ',
      () async {
        container = ProviderContainer.test(
          overrides: [
            loadProductCategoryUseCaseProvider.overrideWith(
              (ref) async => right(const []),
            ),
            loadProductListUseCaseProvider(initialQuery).overrideWith(
              (ref) async => right(
                ProductGetAllList(
                  products: [mockProduct1],
                  total: 1, // เท่ากับจำนวนที่มีแล้ว = ครบแล้ว
                  skip: 0,
                  limit: 20,
                ),
              ),
            ),
            // ตั้งใจไม่ override provider หน้าถัดไป — ถ้า guard ไม่ทำงาน test นี้จะ throw เพราะเรียก provider ที่ไม่มี override
          ],
        );
        container.listen(productListControllerProvider, (_, __) {});
        await pumpEventQueue();

        final controller = container.read(
          productListControllerProvider.notifier,
        );

        await controller
            .loadProductMore(); // ควรถูก guard สกัดไว้ ไม่ยิง network

        final state = container.read(productListControllerProvider);
        state.maybeMap(
          initialized: (s) {
            expect(s.data.isLoadMore, false);
            expect(s.data.products.length, 1);
          },
          orElse: () => fail('ควรเป็น initialized state'),
        );
      },
    );
  });
}
