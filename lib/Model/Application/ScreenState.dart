import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenState extends ChangeNotifier {
  void changeToNotificationCreateWidget() {
    notifyListeners();
  }
}
