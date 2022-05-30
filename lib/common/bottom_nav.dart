import 'package:flutter/material.dart';

class BottomNav with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;
  set currentIndex(index) => _currentIndex = 0;

  void homeScreenIndex() {
    _currentIndex = 0;
    notifyListeners();
  }

  void onTap(int indexTapped) {
    _currentIndex = indexTapped;
    notifyListeners();
  }
}
