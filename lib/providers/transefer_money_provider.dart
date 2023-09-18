import 'package:flutter/cupertino.dart';

class TransferMoneyProvider extends ChangeNotifier {
  int _value = 0;

  get  value => _value;

  void setValue(value) {
    if (value > 0) {
      _value = value;
    }
    notifyListeners();
  }

  void incrementValue(){
      _value++;
      notifyListeners();
    }


  void decrementValue(){
    if(value>0){
      _value--;
    }
    notifyListeners();
  }
}
