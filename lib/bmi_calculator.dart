import 'dart:math';

class Calculator {
  Calculator({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getEvaluation() {
    if (_bmi >= 25) {
      return 'Try eating less, exercising more or eating healthier.';
    } else if (_bmi > 18.5) {
      return 'Keep it up!';
    } else {
      return 'You can eat a bit more.';
    }
  }
}
