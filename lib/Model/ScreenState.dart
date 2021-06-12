import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenState extends ChangeNotifier {
  List<Widget> screens = [];

  void addScreen(Widget screen) {
    screens.add(screen);
  }
}

main() {
  addScreen(screen);
}
