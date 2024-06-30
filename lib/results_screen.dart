import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final double result;
  const ResultsScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Results"),
      ),
      body: Center(
        child: Text("Result is : $result"),
      ),
    );
  }
}
