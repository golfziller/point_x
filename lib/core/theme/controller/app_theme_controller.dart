import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_theme_controller.g.dart';

@riverpod
class ThemeController extends _$ThemeController {
  @override
  ThemeMode build() {
    return ThemeMode.light;
  }

  // ฟังก์ชันเปลี่ยนเป็น Light Mode
  void setLightTheme() => state = ThemeMode.light;

  // ฟังก์ชันเปลี่ยนเป็น Dark Mode
  void setDarkTheme() => state = ThemeMode.dark;

  // ฟังก์ชันเปลี่ยนตามระบบปฏิบัติการ
  void setSystemTheme() => state = ThemeMode.system;

  // ฟังก์ชันสลับธีมไปมา (Toggle) สำหรับปุ่มสวิตช์ง่ายๆ
  void toggleTheme() {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }
}
