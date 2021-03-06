import 'dart:math';
class CalculatorBrain{
  final int? height;
  final int? weight;
  CalculatorBrain({this.height, this.weight});

  double _bmi=0 ;
  String calculatorBMI(){

    _bmi = (weight! / pow(height!/100,2));
    return _bmi.toStringAsFixed(1);

  }
  String getResult(){

    if(_bmi>=25){
      return "OVERWEIGHT";
    }else if(_bmi > 18){
      return "NORMAL";
    }else{
      return "UNDERWEIGHT";
    }

  }
  String getInterpretation(){

    if(_bmi>=25){
      return "You have a higher then normal body weight , try to exercise more..";
    }else if(_bmi > 18){
      return "You have a normal body weight . Good job!..";
    }else{
      return "You have a lower then normal body weight , You can eat bit more..";
    }
  }

}