import 'package:calculadora/components/button.dart';
import 'package:calculadora/components/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Button.extras("C"),
            Button.extras("+/-"),
            Button.extras("%"),
            Button.operation("/")
          ]),
          ButtonRow(
              [Button("1"), Button("2"), Button("3"), Button.operation("x")]),
          ButtonRow(
              [Button("4"), Button("5"), Button("7"), Button.operation("-")]),
          ButtonRow(
              [Button("7"), Button("8"), Button("9"), Button.operation("+")]),
          ButtonRow([
            Button(
              "0",
              flex_value: 2,
            ),
            Button("."),
            Button.operation("=")
          ]),
        ],
      ),
    );
  }
}
