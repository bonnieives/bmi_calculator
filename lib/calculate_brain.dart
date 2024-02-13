import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI() {
    
    _bmi = weight / pow(height/100, 2);
    
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 35.0 ) {
      return 'Extremely Obese';
    } else if (_bmi < 35.0 && _bmi >= 30.0) {
      return 'Obese';
    } else if (_bmi < 30.0 && _bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi < 25.0 && _bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 35.0 ) {
      return 'Maybe you need to consider a shocking diet and some medical help.';
    } else if (_bmi < 35.0 && _bmi >= 30.0) {
      return 'A good diet and some exercises can help you to keep on track.';
    } else if (_bmi < 30.0 && _bmi >= 25.0) {
      return 'A little bit more exercising can help you.';
    } else if (_bmi < 25.0 && _bmi >= 18.5) {
      return 'Good job. Keep doing it!';
    } else {
      return 'You should consider to eat a little bit more.';
    }

  }

}