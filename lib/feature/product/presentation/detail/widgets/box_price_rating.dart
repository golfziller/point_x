import 'package:flutter/material.dart';
import 'package:point_x/core/helper/currency_format.dart';
import 'package:point_x/shared/widgets/common/ui_helper.dart';

class BoxPriceRating extends StatelessWidget {
  const BoxPriceRating({super.key, required this.price, required this.rating});

  final double price;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          formatCurrency(price),
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.star, color: Colors.amber, size: 18),
            horizontalSpaceTiny,
            Text(
              rating.toStringAsFixed(1),
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
