import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeltonLoad extends StatelessWidget {
  const SkeltonLoad({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Skeletonizer(
          enabled: true,
          child: SizedBox(
            height: 200,
            child: CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1,
                height: 200,
                enableInfiniteScroll: false,
              ),
              items: List.generate(
                3,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),

        // Title skeleton
        Skeletonizer(enabled: true, child: Center(child: Text('title title'))),

        const SizedBox(height: 16),

        Skeletonizer(
          enabled: true,
          justifyMultiLineText: true,
          child: Container(
            child: Text(
              'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
            ),
          ),
        ),
      ],
    );
  }
}
