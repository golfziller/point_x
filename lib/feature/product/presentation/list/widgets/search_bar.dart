import 'package:flutter/material.dart';
import 'package:point_x/core/constant/product/product_constant.dart';
import 'package:point_x/shared/widgets/common/ui_helper.dart';

class SearchForm extends StatelessWidget {
  final Function(String) onSearchChange;
  const SearchForm({super.key, required this.onSearchChange});

  @override
  Widget build(BuildContext context) {
    final double heightInput = 56;
    final double radiusBorder = 16;
    final double sizeIcon = 24;
    return Row(
      children: [
        Expanded(
          child: Container(
            height: heightInput,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(radiusBorder),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(
                    context,
                  ).colorScheme.onSecondary.withValues(alpha: 0.1),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(
                    Icons.search_rounded,
                    color: Theme.of(context).colorScheme.onSecondaryFixed,
                    size: sizeIcon,
                  ),
                ),

                Container(
                  width: 1,
                  height: heightInput / 2,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),

                horizontalSpaceSmall,

                Expanded(
                  child: TextFormField(
                    onChanged: onSearchChange,
                    decoration: InputDecoration(
                      hintText: ProductConstant.hintSearch,
                      fillColor: Theme.of(context).colorScheme.onPrimary,

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(radiusBorder),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(radiusBorder),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.only(bottom: 2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
