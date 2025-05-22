import 'package:flutter/material.dart';

class MachineLearningModelPage extends StatelessWidget {
  const MachineLearningModelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF1F5), // Açık pembe arka plan
      appBar: AppBar(
        title: const Text('Machine Learning Model'),
        backgroundColor: Colors.redAccent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Text(
                'Machine Learning Model Structure',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // %15 daha büyük görsel
              Expanded(
                child: Center(
                  child: FractionallySizedBox(
                    widthFactor: 1.15,
                    heightFactor: 1.15,
                    child: Image.asset(
                      'assets/machine_learning_model.png',
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return const Text(
                          'Image could not be loaded.',
                          style: TextStyle(color: Colors.red),
                        );
                      },
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // %25 daha büyük yazı
              const Text(
                'This structure illustrates the machine learning pipeline used in our earthquake prediction model.',
                style: TextStyle(fontSize: 20, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
