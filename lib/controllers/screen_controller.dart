import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ScreenController extends ChangeNotifier{
  int _currScreenIndex=0;

  int get currScreenIndex => _currScreenIndex;

  set currScreenIndex(int value) {
    _currScreenIndex = value;
    notifyListeners();
  }
}