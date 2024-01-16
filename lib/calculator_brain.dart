class CalculatorBrain {
  CalculatorBrain({
    required this.servingCarbs,
    required this.servingAmount,
    required this.foodAmount,
    required this.carbRatio,
  });

  final int servingCarbs;
  final int servingAmount;
  final int foodAmount;
  final int carbRatio;

  double _bolusAmount = 0;

  String calculateBolus() {
    _bolusAmount = foodAmount.toDouble() *
        servingCarbs.toDouble() /
        servingAmount.toDouble() /
        carbRatio.toDouble();
    print(_bolusAmount.toStringAsFixed(1));
    return _bolusAmount.toStringAsFixed(1);
  }

  String getResult() {
    if (_bolusAmount < .25) {
      return 'perfect';
    } else if (_bolusAmount < 1) {
      return 'excellent';
    } else {
      return 'spectacular';
    }
  }

  String getInterpretation() {
    if (_bolusAmount < .25) {
      return 'You\'re a star!';
    } else if (_bolusAmount < 1) {
      return 'Fabulous, as usual!';
    } else {
      return 'You are the coolest ever!';
    }
  }
}
