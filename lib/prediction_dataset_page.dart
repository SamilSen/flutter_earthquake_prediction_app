import 'package:flutter/material.dart';

class PredictionDatasetPage extends StatelessWidget {
  const PredictionDatasetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF1F5), // Açık pembe ton
      appBar: AppBar(
        title: const Text('Prediction Dataset'),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text(
                'Prediction Dataset Visualizations',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              DatasetImage(title: 'Earthquake Count Over Time', path: 'assets/prediction_earthquake.png'),
              const SizedBox(height: 20),
              DatasetImage(title: 'Energy Released Over Time', path: 'assets/prediction_energy.png'),
              const SizedBox(height: 20),
              DatasetImage(title: 'b-value Variations', path: 'assets/prediction_bvalue.png'),
            ],
          ),
        ),
      ),
    );
  }
}

class DatasetImage extends StatelessWidget {
  final String title;
  final String path;

  const DatasetImage({super.key, required this.title, required this.path});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black87),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(path),
          ),
        ),
      ],
    );
  }
}
