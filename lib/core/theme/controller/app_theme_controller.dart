import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_theme_controller.g.dart';

@riverpod
class ThemeController extends _$ThemeController {
  @override
  ThemeMode build() {
    return ThemeMode.light;
  }

  void setLightTheme() => state = ThemeMode.light;

  void setDarkTheme() => state = ThemeMode.dark;

  void setSystemTheme() => state = ThemeMode.system;

  void toggleTheme() {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }
}
