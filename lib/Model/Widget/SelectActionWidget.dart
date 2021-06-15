import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Application/ScreenState.dart';
export 'package:provider/provider.dart';

class SelectActionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ScreenState(),
      child: Scaffold(
        body: Center(
          child: Row(
            children: <Widget>[
              TurnOnButton(),
              const TurnOffButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class TurnOnButton extends StatelessWidget {
  final ScreenState screenState = ScreenState();

  @override
  Widget build(BuildContext context) {
    //final textValue = context.watch<ButtonState>().isEnabled;
    return ElevatedButton(
      onPressed: () {
        print('object');
        context.read<ScreenState>().changeToNotificationCreateWidget();
      },
      child: const Text("通知を作る"),
    );
  }
}

class TurnOffButton extends StatelessWidget {
  const TurnOffButton();
  @override
  Widget build(BuildContext context) {
    //final textValue = context.watch<ButtonState>().isEnabled;
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 40),
        primary: Colors.white,
        backgroundColor: Colors.lightBlue,
        elevation: 123419,
      ),
      onPressed: () {},
      child: const Text("通知を消す"),
    );
  }
}
