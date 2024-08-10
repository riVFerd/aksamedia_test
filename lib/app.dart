import 'package:aksamedia_test/presentation/router/app_router.dart';
import 'package:aksamedia_test/presentation/theme/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
