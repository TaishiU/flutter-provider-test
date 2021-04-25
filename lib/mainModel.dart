import 'package:flutter/material.dart';

class mainModel extends ChangeNotifier {
  String text = 'Provider';

  void changeText() {
    text = 'Provider Change';
    notifyListeners();
  }
}
