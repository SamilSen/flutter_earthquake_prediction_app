import 'package:flutter/material.dart';

class PredictionResultPage extends StatelessWidget {
  const PredictionResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDEDED), // Hafif kırmızımsı arka plan
      appBar: AppBar(
        title: const Text('Prediction Result'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Predicted Earthquake Activity for Istanbul',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset('assets/prediction_final_for_Istanbul.png'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Yapay zeka modeli %96 doğrulukla tahmin yapmakta olup,\ngelecek 60 gün içinde maksimum Mw 5.3\'lik bir deprem riski olduğuna işaret etmektedir.',
              style: TextStyle(
                fontSize: 22.5, // %25 artırılmış boyut
                color: Colors.deepOrange, // Koyu turuncu
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'Legal Disclaimer:\nThe predictions provided in this application are based on scientific modeling and are intended for informational purposes only. They do not constitute a guarantee of accuracy or future events. The developer assumes no liability for any direct or indirect damages arising from the use of this information.',
              style: TextStyle(
                fontSize: 11.25, // %60 küçültülmüş boyut
                color: Colors.red,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
