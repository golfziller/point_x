import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:point_x/feature/product/presentation/list/screen/product_list_screen.dart';
import 'package:point_x/feature/splash/presentation/screen/splash_screen.dart';
import 'package:point_x/router/path/route_path.dart';

part 'app_router.g.dart';
part './routes/splash_route.dart';
part './routes/product_list_route.dart';

final router = GoRouter(
  initialLocation: const SplashRoute().location,
  routes: $appRoutes,
);
