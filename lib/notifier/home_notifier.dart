import 'package:flutter/cupertino.dart';

class HomeNotifier with ChangeNotifier{
  String _firstText = '';
  String _secondText = '';

  String get firstText => _firstText;
  String get secondText => _secondText;

  void setFirstText(String text) {
    _firstText = text;
    notifyListeners();
  }

  void setSecondText(String text) {
    _secondText = text;
    notifyListeners();
  }
}