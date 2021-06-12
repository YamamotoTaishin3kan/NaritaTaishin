import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

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
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
      ),
      onPressed: () {},
      child: const Text('Enabled'),
    );
  }
}
