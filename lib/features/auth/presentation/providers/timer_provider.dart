import 'dart:async';

import 'package:flutter/material.dart';

class TimerProvider extends ChangeNotifier {
  Timer? _timer;

  bool _isTimerRunning = false;
  bool get isTimerRunning => _isTimerRunning;
  int _remainingSeconds = 0;
  int get remainingSeconds => _remainingSeconds;

  void startTimer(int seconds) {
    if (_isTimerRunning) return;
    _remainingSeconds = seconds;

    _isTimerRunning = true;
    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      _remainingSeconds = _remainingSeconds - 1;
      notifyListeners();
      if (_remainingSeconds <= 0) {
        _timer?.cancel();
        _isTimerRunning = false;
      }
    });
    notifyListeners();
  }

  void stopTimer() {
    _timer?.cancel();
    _isTimerRunning = false;
    notifyListeners();
  }
}
