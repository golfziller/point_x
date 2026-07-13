import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:point_x/core/helper/either_mini.dart';
import 'package:point_x/core/helper/failure.dart';
import 'package:point_x/feature/product/domain/entities/product.dart';
import 'package:point_x/feature/product/domain/usecase/load_product_detail_usecase.dart';
import 'package:point_x/feature/product/presentation/detail/controller/product_detail_controller.dart';

import 'package:point_x/feature/product/presentation/detail/state/product_detail_state.dart';

void main() {
  const tProductId = '1234';

  final mockProduct = Product(
    title: 'title',
    id: 1234,
    description: '',
    price: 10,
    rating: 3,
    images: [],
  );
  group("product detail controller", () {
    test(
      'เมื่อ UseCase โหลดข้อมูลสำเร็จ (Right) State ต้องเปลี่ยนเป็น initialized',
      () async {
        final container = ProviderContainer.test(
          overrides: [
            loadProductDetailUseCaseProvider(id: tProductId).overrideWith((
              ref,
            ) async {
              return right(mockProduct);
            }),
          ],
        );
        final sub = container.listen(
          productDetailControllerProvider(tProductId),
          (_, _) {},
        );
        addTearDown(sub.close);

        await pumpEventQueue();

        expect(
          sub.read(),
          ProductDetailState.initialized(products: mockProduct),
        );
      },
    );
    test(
      'เมื่อ UseCase โหลดข้อมูลไม่สำเร็จ (Left) State ต้องเปลี่ยนเป็น error',
      () async {
        final container = ProviderContainer.test(
          overrides: [
            loadProductDetailUseCaseProvider(id: tProductId).overrideWith((
              ref,
            ) async {
              return left(Failure());
            }),
          ],
        );

        final sub = container.listen(
          productDetailControllerProvider(tProductId),
          (_, _) {},
        );
        addTearDown(sub.close);

        await pumpEventQueue();

        expect(sub.read(), ProductDetailState.error());
      },
    );
  });
}
