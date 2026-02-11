import 'package:flutter/material.dart';
import 'package:mvvm_arch/core/routing/app_routes.dart';
import 'package:mvvm_arch/core/widgets/home_screen.dart';

class AppRouter {

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) =>  HomeScreen(),
        );

      // case '/login':
      //   return MaterialPageRoute(
      //     builder: (_) => const LoginScreen(),
      //   );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
