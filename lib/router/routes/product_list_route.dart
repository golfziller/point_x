part of '../app_router.dart';

@TypedGoRoute<ProductListRoute>(path: RoutePath.productList)
class ProductListRoute extends GoRouteData with $ProductListRoute {
  const ProductListRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProductListScreen();
  }
}
