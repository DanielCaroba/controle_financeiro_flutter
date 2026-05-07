import 'package:flutter/material.dart';

class AnalysisView extends StatelessWidget {
  const AnalysisView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Análises'),
      ),

      body: const Center(
        child: Text('Tela de Análises'),
      ),
    );
  }
}