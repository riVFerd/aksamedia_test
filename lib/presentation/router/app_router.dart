import 'package:aksamedia_test/presentation/screens/home/home_screen.dart';
import 'package:aksamedia_test/presentation/screens/product/product_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static PageRoute onGenerateRoute(RouteSettings settings) {
    return switch (settings.name) {
      HomeScreen.path => MaterialPageRoute(builder: (_) => const HomeScreen()),
      ProductScreen.path => MaterialPageRoute(builder: (_) => const ProductScreen()),
      _ => throw Exception('Route not found: ${settings.name}'),
    };
  }
}
