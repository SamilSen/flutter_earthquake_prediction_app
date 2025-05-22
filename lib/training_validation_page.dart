import 'package:flutter/material.dart';

class TrainValidationPage extends StatelessWidget {
  const TrainValidationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Training-Validation Dataset'),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildImageCard('assets/train_validation_earthquake.png'),
              const SizedBox(height: 16),
              _buildImageCard('assets/train_validation_energy.png'),
              const SizedBox(height: 16),
              _buildImageCard('assets/train_validation_bvalue.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageCard(String assetPath) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      shadowColor: Colors.redAccent.withOpacity(0.4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(assetPath, fit: BoxFit.contain),
      ),
    );
  }
}
