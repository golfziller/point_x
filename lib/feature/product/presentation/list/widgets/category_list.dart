import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:point_x/core/constant/product/product_constant.dart';
import 'package:point_x/feature/product/domain/entities/product_category.dart';
import 'package:point_x/feature/product/presentation/list/widgets/card_category.dart';
import 'package:point_x/shared/widgets/common/ui_helper.dart';

class CategoriesList extends ConsumerWidget {
  const CategoriesList({
    super.key,
    required this.categoriesList,
    required this.currentSelectedCategory,
    required this.onTap,
  });
  final List<ProductCategory> categoriesList;
  final ProductCategory? currentSelectedCategory;
  final Function(ProductCategory) onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double heightBox = 110;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ProductConstant.lbCategory,
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              currentSelectedCategory?.name ?? '',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
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
                    selected:
                        currentSelectedCategory?.slug != null &&
                        currentSelectedCategory?.slug == category.slug,
                    productCategory: category,
                    onTap: () => onTap(category),
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
