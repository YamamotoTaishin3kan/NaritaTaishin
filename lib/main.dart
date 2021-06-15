import 'package:flutter/material.dart';
import 'Model/Widget/SelectActionWidget.dart';
export 'package:provider/provider.dart';
import 'Model/Application/ScreenState.dart';

void main() {
  runApp(const NotificationCreator());
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ScreenState(),
      child: MaterialApp(
        title: "Baby,it's you!!",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: NotificationCreator(),
      ),
    );
  }
}

class NotificationCreator extends StatelessWidget {
  const NotificationCreator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Baby,it's you!!",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: context
          .select((ScreenState screenState) => screenState.currentScreen),
    );
  }
}
