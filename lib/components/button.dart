// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import "package:flutter/material.dart";

class Button extends StatelessWidget {
  final String text;
  final int flex_value;
  final Color color;
  final void Function(String) cb;

  static const Color DEFAULT = Color.fromRGBO(100, 100, 100, 1);
  static const Color OPERATION = Colors.orangeAccent;
  static const Color EXTRAS = Color.fromRGBO(80, 80, 80, 1);

  const Button(this.text,
      {super.key, this.flex_value = 1, this.color = DEFAULT, required this.cb});

  const Button.extras(this.text,
      {super.key, this.color = EXTRAS, this.flex_value = 1, required this.cb});

  const Button.operation(this.text,
      {super.key,
      this.color = OPERATION,
      this.flex_value = 1,
      required this.cb});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex_value,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            textStyle: TextStyle(fontSize: 42),
            foregroundColor: Colors.white70,
            side: BorderSide(color: const Color.fromRGBO(48, 48, 48, 1)),
            splashFactory: NoSplash.splashFactory,
            backgroundColor: color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          ),
          child: Text(text),
          onPressed: () => cb(text),
        ));
  }
}
