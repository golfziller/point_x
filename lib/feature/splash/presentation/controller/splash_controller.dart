import 'package:point_x/feature/splash/presentation/state/splash_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_controller.g.dart';

@riverpod
class SplashController extends _$SplashController {
  @override
  SplashState build() {
    Future(() => _initialData());
    return const SplashState.initial();
  }

  Future<void> _initialData() async {
    //Can: improve logic in the future
    await Future.delayed(Duration(seconds: 3));
    state = SplashState.success();
  }
}
