import 'package:flutter/material.dart';
import 'Model/View/SelectActionWidget.dart';
export 'package:provider/provider.dart';

void main() {
  runApp(const NotificationCreator());
}

class ButtonState extends ChangeNotifier {
  bool isEnabled = true;
  void increment(bool isEnable) {
    isEnabled = isEnable;
    notifyListeners();
  }
}

class NotificationCreator extends StatelessWidget {
  const NotificationCreator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ButtonState>(
      create: (_) => ButtonState(),
      child: MaterialApp(
        title: "Baby,it's you!!",
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: SelectActionWidget(),
      ),
    );
  }
}
