import 'package:flutter/material.dart';
import 'package:test/results_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double results = 50.5;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultsScreen(result: results),
              ),
            );
          },
          child: const Text("Calculate Results"),
        ),
      ),
    );
  }
}
