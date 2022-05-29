import 'package:flutter/material.dart';

class BottomNav with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void onTap(int indexTapped) {
    _currentIndex = indexTapped;
    notifyListeners();
  }
}
