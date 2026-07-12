part of '../app_router.dart';

@TypedGoRoute<ProductListRoute>(path: RoutePath.productList)
class ProductListRoute extends GoRouteData with $ProductListRoute {
  const ProductListRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProductListScreen();
  }
}

@TypedGoRoute<ProductDetailRoute>(path: RoutePath.productDetail)
class ProductDetailRoute extends GoRouteData with $ProductDetailRoute {
  final String id;

  const ProductDetailRoute({required this.id});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProductDetailScreen(id: id);
  }
}
