import 'package:flutter/material.dart';
import 'package:mvvm_arch/core/constants/app_colors.dart';
import 'package:mvvm_arch/core/routing/app_router.dart';
import 'package:mvvm_arch/core/routing/app_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.white),
      ),
      initialRoute: AppRoutes.home,
      onGenerateRoute: AppRouter().generateRoute,
    );
  }
}
