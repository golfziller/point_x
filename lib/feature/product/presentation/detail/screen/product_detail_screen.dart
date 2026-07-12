import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:point_x/feature/product/presentation/detail/controller/product_detail_controller.dart';
import 'package:point_x/feature/product/presentation/detail/state/product_detail_state.dart';
import 'package:point_x/feature/product/presentation/detail/widgets/skelton_load.dart';

class ProductDetailScreen extends HookConsumerWidget {
  final String id;
  const ProductDetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productDetailControllerProvider);
    useEffect(() {
      Future.microtask(() {
        ref.read(productDetailControllerProvider.notifier).initial(id);
      });
      return null; // cleanup function
    }, []);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
      appBar: AppBar(
        title: Text(
          'Product Detail',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        iconTheme: IconThemeData(
          color: Theme.of(
            context,
          ).colorScheme.onSecondaryContainer, // สีลูกศร back
        ),
        backgroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
      ),
      body: state.when(
        error: () => Center(
          child: Text("something went wrong\t Can Improve UI try again here"),
        ),
        initial: () => SizedBox(),
        initialized: (products) => Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(height: 200.0),
              items: products.images.map((i) {
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
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        products.title,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        products.description,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        loading: () => SkeltonLoad(),
      ),
    );
  }
}
