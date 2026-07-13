import 'package:flutter/material.dart';
import 'package:point_x/core/constant/product/product_constant.dart';
import 'package:point_x/shared/widgets/common/ui_helper.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search_off_rounded,
              size: 72,
              color: Theme.of(
                context,
              ).colorScheme.onSecondaryFixed.withValues(alpha: 0.3),
            ),
            verticalSpaceSmall,

            Text(
              ProductConstant.lbProductNotFound,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            verticalSpaceTiny,

            Text(
              ProductConstant.lbProductNotFoundDesc,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
