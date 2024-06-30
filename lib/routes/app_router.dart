import 'package:flutter/material.dart';
import 'package:test/home_screen.dart';
import 'package:test/results_screen.dart';
import 'package:test/routes/routes_name.dart';

class AppRouters {
  static Route onGenerate(RouteSettings settings) {
    double? results;

    switch (settings.name) {
      case RoutesName.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case RoutesName.resultsScreen:
        return MaterialPageRoute(
          builder: (context) => ResultsScreen(result: results ?? 0),
        );

      default:
        return MaterialPageRoute(builder: (context) => unDefinePageRoute());
    }
  }

  static Widget unDefinePageRoute() {
    return const Scaffold(
      body: Center(
        child: Text("Un Defined PageRoute"),
      ),
    );
  }
}
