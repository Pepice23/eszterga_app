import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Data extends ChangeNotifier {
  int number = 1;
  double processedNumber = 0.0;
  List<String> minus10 = ["Írj be számot"];
  List plus10 = [];

  void changeNumber(int changedToNumber) {
    number = changedToNumber;
    minus10 = [];
    plus10 = [];
    notifyListeners();
  }

  void makeResult(int number) {
    double result = 30000 / 3.14 / number;
    processedNumber = result;
  }

  void currentMinus10(int number) {
    double res;
    String formattedRes;
    for (int i = number - 10; i < number; i++) {
      res = 30000 / 3.14 / i;
      formattedRes = "30000/3.14/$i = ${res.toStringAsFixed(2)}";
      minus10.add(formattedRes);
    }
  }

  void currentPlus10(int number) {
    double res;
    String formattedRes;
    for (int i = number + 1; i < number + 11; i++) {
      res = 30000 / 3.14 / i;
      formattedRes = "30000/3.14/$i = ${res.toStringAsFixed(2)}";
      plus10.add(formattedRes);
    }
  }
}
