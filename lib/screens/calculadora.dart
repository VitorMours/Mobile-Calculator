import "package:calculadora/components/display.dart";
import "package:flutter/material.dart";
import "package:calculadora/components/keyboard.dart";

class Calculadora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Calculadora Apple",
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.black)),
        home: Column(
          children: <Widget>[Display("123.45"), Keyboard()],
        ));
  }
}
