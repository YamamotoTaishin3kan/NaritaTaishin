import 'package:flutter/material.dart';
import 'Model/View/SelectActionWidget.dart';

void main() {
  runApp(const NotificationCreator());
}

class NotificationCreator extends StatelessWidget {
  const NotificationCreator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Baby,it's you!!",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SelectActionWidget(),
    );
  }
}
