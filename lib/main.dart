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
    return MaterialApp(
      title: "Baby,it's you!!",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: NotificationCreator(),
    );
  }
}

class NotificationCreator extends StatelessWidget {
  const NotificationCreator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ScreenState(),
      child: MaterialApp(
        title: "Baby,it's you!!",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: _NotificationCreator(),
      ),
    );
  }
}

class _NotificationCreator extends StatelessWidget {
  const _NotificationCreator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.watch<ScreenState>().currentScreen;
  }
}
