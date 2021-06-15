import 'package:flutter/material.dart';
import 'package:notification_creator/Model/Widget/NotificationCreateWidget.dart';
import 'package:notification_creator/Model/Widget/SelectActionWidget.dart';
import 'package:provider/provider.dart';

class ScreenState extends ChangeNotifier {
  StatelessWidget currentScreen = SelectActionWidget();

  void changeToNotificationCreateWidget() {
    currentScreen = NotificationCreatewidget();
    notifyListeners();
  }
}
