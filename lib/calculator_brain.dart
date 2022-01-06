import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResults() {
    if (_bmi <= 18.5) {
      return 'Under Weight';
    } else if (18.5 <= _bmi && _bmi <= 24.9) {
      return 'Healthy Weight';
    } else if (25.0 <= _bmi && _bmi <= 29.9) {
      return 'Overweight';
    } else if (_bmi >= 30.0) {
      return 'Obesity';
    }
  }

  String interpretation() {
    if (_bmi <= 18.5) {
      return 'You have a lower weight than normal, Try to eat a bit more (._.)';
    } else if (18.5 <= _bmi && _bmi <= 24.9) {
      return 'You have a normal body weight, Good Job ヽ(•‿•)ノ';
    } else if (25.0 <= _bmi && _bmi <= 29.9) {
      return 'You have higher Weight than normal, Try to exercise more (・_・;)';
    } else if (_bmi >= 30.0) {
      return 'You have too much higher weight, You need to stop eating junk (ಠ¿ಠ)';
    }
  }
}
