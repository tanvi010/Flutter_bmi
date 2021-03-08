import 'dart:math';
import 'main.dart';

class CalculatorBrain {

  final height;
  final weight;
  double _bmi;
  CalculatorBrain({this.height,this.weight});
  String calculateBMI ()
  {
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
    String getResult(){
      if (_bmi > 26)
        {
          return('Over weight');
        }
      else if(_bmi >18.5)
      {
        return('Normal');
      }
      else {
        return('UnderWeight');
      }
    }
    String getInterpretaion(){
      if (_bmi > 25)
      {
        return('You have higher than normal body weight , Try to exercise !!');
      }
      else if(_bmi > 18.5)
      {
        return('You have Normal body weight , Good Job !!');
      }
      else {
        return('You have lower than normal body weight , You can eat a bit more !!');
      }
    }


}