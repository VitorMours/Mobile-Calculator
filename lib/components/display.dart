import "package:flutter/material.dart";
import "package:auto_size_text/auto_size_text.dart";

class Display extends StatelessWidget {
  final String text;

  Display(this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
            color: Color.fromRGBO(48, 48, 48, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    text,
                    maxFontSize: 80,
                    minFontSize: 20,
                    maxLines: 1,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                      fontSize: 80,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ],
            )));
  }
}
