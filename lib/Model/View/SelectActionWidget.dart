import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../../main.dart';
export 'package:provider/provider.dart';

class SelectActionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: const <Widget>[
            CreateButton(),
            CreateButton(),
          ],
        ),
      ),
    );
  }
}

class CreateButton extends StatelessWidget {
  const CreateButton();
  @override
  Widget build(BuildContext context) {
    final textValue = context.watch<ButtonState>().isEnabled;
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
      ),
      onPressed: () {},
      child: Text(textValue.toString()),
    );
  }
}
