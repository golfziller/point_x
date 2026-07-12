import 'package:flutter/material.dart';
import 'package:point_x/feature/product/presentation/list/widgets/card_mock.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeltonListViewCard extends StatelessWidget {
  final bool enabled;
  final int count;
  const SkeltonListViewCard({super.key, this.enabled = false, this.count = 1});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: enabled,
      child: ListView.builder(
        itemCount: count,
        itemBuilder: (context, index) {
          return CardMock();
        },
      ),
    );
  }
}
