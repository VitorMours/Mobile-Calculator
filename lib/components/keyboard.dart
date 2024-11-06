import 'package:calculadora/components/button.dart';
import 'package:calculadora/components/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;

  Keyboard(this.cb);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Button.extras("AC", cb: cb),
            Button.extras("+/-", cb: cb),
            Button.extras("%", cb: cb),
            Button.operation("/", cb: cb)
          ]),
          ButtonRow([
            Button("7", cb: cb),
            Button("8", cb: cb),
            Button("9", cb: cb),
            Button.operation("x", cb: cb)
          ]),
          ButtonRow([
            Button("4", cb: cb),
            Button("5", cb: cb),
            Button("6", cb: cb),
            Button.operation("-", cb: cb)
          ]),
          ButtonRow([
            Button("1", cb: cb),
            Button("2", cb: cb),
            Button("3", cb: cb),
            Button.operation("+", cb: cb)
          ]),
          ButtonRow([
            Button("0", flex_value: 2, cb: cb),
            Button(".", cb: cb),
            Button.operation("=", cb: cb)
          ]),
        ],
      ),
    );
  }
}
