import 'package:flutter/cupertino.dart';

class CounterProvider with ChangeNotifier {
  int count = 0;

  incrementCounter() {
    count = count + 1;
    notifyListeners();
  }

}
