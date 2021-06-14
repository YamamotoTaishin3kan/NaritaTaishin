import 'package:flutter/material.dart';
import 'Model/View/SelectActionWidget.dart';
import 'Model/Widget/SelectActionWidget.dart';
export 'package:provider/provider.dart';
import 'Model/Application/ScreenState.dart';

void main() {
  runApp(const NotificationCreator());
}

class NotificationCreator extends StatelessWidget {
  const NotificationCreator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ScreenState(),
      child: MaterialApp(
        title: "Baby,it's you!!",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: SelectActionWidget(),
      ),
    );
  }
}
