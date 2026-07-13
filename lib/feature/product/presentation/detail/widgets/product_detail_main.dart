import 'package:flutter/material.dart';
import 'package:point_x/feature/product/domain/entities/product.dart';
import 'package:point_x/feature/product/presentation/detail/widgets/box_description.dart';
import 'package:point_x/feature/product/presentation/detail/widgets/box_price_rating.dart';
import 'package:point_x/feature/product/presentation/detail/widgets/carousel_slide.dart';
import 'package:point_x/shared/widgets/common/ui_helper.dart';

class ProductDetailMain extends StatelessWidget {
  const ProductDetailMain({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    final double pdScreen = 16;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarouselSlide(images: product.images),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(pdScreen),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpaceSmall,
                  Center(
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  verticalSpaceSmall,
                  BoxPriceRating(price: product.price, rating: product.rating),
                  verticalSpaceMedium,
                  BoxDescription(description: product.description),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
