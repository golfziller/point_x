import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:point_x/feature/product/domain/entities/product_category.dart';
import 'package:point_x/feature/product/presentation/list/widgets/card_category.dart';
import 'package:point_x/shared/widgets/common/ui_helper.dart';

class CategoriesList extends ConsumerWidget {
  const CategoriesList({
    super.key,
    required this.categoriesList,
    required this.currentSlug,
    required this.onTap,
  });
  final List<ProductCategory> categoriesList;
  final String? currentSlug;
  final Function(String) onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double heightBox = 110;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Category',
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        verticalSpaceTiny,

        SizedBox(
          height: heightBox,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoriesList.length,
            itemBuilder: (context, index) {
              final category = categoriesList[index];
              return Row(
                children: [
                  CardCategory(
                    selected: currentSlug == category.slug,
                    productCategory: category,
                    onTap: () => onTap(category.slug),
                  ),

                  horizontalSpaceMedium,
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
