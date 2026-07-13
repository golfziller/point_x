import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSlide extends StatelessWidget {
  const CarouselSlide({super.key, required, required this.images});
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final double height = 200;
    return CarouselSlider(
      options: CarouselOptions(
        height: height,
        aspectRatio: 0.5,
        autoPlay: true,
        viewportFraction: .5,
        enlargeCenterPage: true,
      ),
      items: images.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return CachedNetworkImage(
              imageUrl: i,
              fit: BoxFit.cover,
              errorWidget: (context, url, error) => Icon(Icons.error),
            );
          },
        );
      }).toList(),
    );
  }
}
