import "package:calculadora/components/display.dart";
import "package:calculadora/models/memory.dart";
import "package:flutter/material.dart";
import "package:calculadora/components/keyboard.dart";

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final Memory memory = Memory();

  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Calculadora Apple",
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.black)),
        home: Column(
          children: <Widget>[Display(memory.value), Keyboard(_onPressed)],
        ));
  }
}
