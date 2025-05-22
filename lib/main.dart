import 'package:flutter/material.dart';

// Sayfa geçişlerinde kullanılacak sayfalar:
import 'training_validation_page.dart';
import 'prediction_result_page.dart';
import 'prediction_dataset_page.dart';
import 'machine_learning_model_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Earthquake Prediction App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
      routes: {
        '/train': (context) => const TrainValidationPage(),
        '/model': (context) => const MachineLearningModelPage(),
        '/dataset': (context) => const PredictionDatasetPage(),
        '/prediction': (context) => const PredictionResultPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Boyutlar ve stiller
    const double landingImageHeight = 390.0; // %30 büyütülmüş hali
    const double appTitleFontSize = 79.35; // %15 daha büyük
    const double iconSize = 50; // ikon boyutu
    const double mainButtonTextSize = 32; // Earthquake Prediction of Istanbul

    return Scaffold(
      appBar: AppBar(
        title: const Text('Earthquake Prediction App'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            children: [
              Image.asset('assets/Landing.png', height: landingImageHeight),
              const SizedBox(height: 30),
              Text(
                'Earthquake Prediction APP',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: appTitleFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
              const SizedBox(height: 40),

              // Büyük Prediction of Istanbul butonu
              SizedBox(
                width: double.infinity,
                height: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/prediction');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.analytics, size: iconSize, color: Colors.white.withOpacity(0.99)),
                      const SizedBox(height: 8),
                      Text(
                        'Earthquake Prediction of Istanbul',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: mainButtonTextSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.99),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Alt 3 küçük kare butonlar
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: MiniNavigationCard(
                            title: 'Training-Validation Dataset',
                            icon: Icons.dataset,
                            route: '/train',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: MiniNavigationCard(
                            title: 'Machine Learning Model',
                            icon: Icons.model_training,
                            route: '/model',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: MiniNavigationCard(
                            title: 'Prediction Dataset',
                            icon: Icons.table_chart,
                            route: '/dataset',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MiniNavigationCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String route;

  const MiniNavigationCard({
    super.key,
    required this.title,
    required this.icon,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red.shade300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(8),
        ),
        onPressed: () => Navigator.pushNamed(context, route),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 36, color: Colors.white),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
