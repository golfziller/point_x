import 'package:flutter/material.dart';
import 'package:point_x/core/constant/product/product_constant.dart';
import 'package:point_x/shared/widgets/common/ui_helper.dart';

class BoxDescription extends StatelessWidget {
  const BoxDescription({super.key, required this.description});
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          ProductConstant.lbDescription,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSecondaryFixed,
          ),
        ),
        verticalSpaceSmall,
        Text(description, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
