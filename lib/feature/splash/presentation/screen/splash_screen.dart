import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:point_x/feature/splash/presentation/controller/splash_controller.dart';
import 'package:point_x/feature/splash/presentation/state/splash_state.dart';
import 'package:point_x/router/app_router.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(splashControllerProvider, (previous, next) {
      next.maybeWhen(
        orElse: () => {},
        success: () {
          ProductListRoute().go(context);
        },
      );
    });
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * .3,
          ),
          child: Lottie.asset('assets/lottie/splash.lottie'),
        ),
      ),
    );
  }
}
