import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:point_x/core/helper/currency_format.dart';
import 'package:point_x/feature/product/domain/entities/product.dart';
import 'package:point_x/shared/widgets/common/ui_helper.dart';

class ProductItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTab;
  const ProductItemCard({
    super.key,
    required this.product,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    final double sizeImg = 110;
    final double marginVerticalItem = 8;
    final double radius = 16;
    return GestureDetector(
      onTap: onTab,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: marginVerticalItem),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(radius),
              child: CachedNetworkImage(
                width: sizeImg,
                height: sizeImg,
                fit: BoxFit.cover,
                imageUrl: product.images.first,
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),

            horizontalSpaceSmall,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verticalSpaceTiny,

                  Text(
                    product.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                  verticalSpaceSmall,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            formatCurrency(product.price),
                            style: Theme.of(context).textTheme.titleMedium!
                                .copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
