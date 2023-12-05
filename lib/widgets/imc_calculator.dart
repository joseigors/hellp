import 'package:flutter/material.dart';

class ImcCalculator extends StatefulWidget {
  @override
  _ImcCalculatorState createState() => _ImcCalculatorState();
}

class _ImcCalculatorState extends State<ImcCalculator> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double result = 0.0;

  void calculateImc() {
    double weight = double.tryParse(weightController.text) ?? 0.0;
    double height = double.tryParse(heightController.text) ?? 0.0;

    if (weight > 0 && height > 0) {
      double bmi = weight / ((height / 100) * (height / 100));
      setState(() {
        result = bmi;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculadora de IMC',
          style: TextStyle(fontFamily: 'Waiting', fontSize: 26),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightBlueAccent, Colors.white70],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              style: TextStyle(fontFamily: 'Waiting'),
              decoration: InputDecoration(labelText: 'Digite seu Peso (kg)'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              style: TextStyle(fontFamily: 'Waiting'),
              decoration: InputDecoration(labelText: 'Informe sua Altura (cm)'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                calculateImc();
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                primary: Colors.lightBlueAccent,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
              child: Text(
                'Calcular',
                style: TextStyle(fontFamily: 'Waiting', fontSize: 24),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Resultado: ${result.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24, fontFamily: 'Waiting'),
            ),
          ],
        ),
      ),
    );
  }
}
