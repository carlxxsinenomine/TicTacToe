import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(TicTacToe());

class TicTacToe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'TicTacToe',
      theme: ThemeData.dark().copyWith(
        useMaterial3: false, // dunno but without this, my custom style won't take effect
        scaffoldBackgroundColor: Color(0xFF132440), //  Change the bg color of the Scaffold
        colorScheme: ColorScheme.light(
          primary: Color(0xFF0A0E21),
        ),

      ),
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch relative horizontally since it's a Column
          mainAxisAlignment: MainAxisAlignment.center, // Vertical alignment
          children: <Widget>[
            // Title
            Text(
              'Tic-Tac-Toe',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Courgette",
                fontSize: 50,
              ),
            ),

            // center the button cause when crossAxis is stretched
            // the width of the button is also stretched
            // so centering makes the MainScreenButton relative to the Center widget
            Center(
              child: MainScreenButton(
                titleLabel: 'Play with AI',
                width: 200,
                onPressed: () {
                },
              ),
            ),
            Center(
              child: MainScreenButton(
                titleLabel: 'Play with a friend',
                width: 200,
                onPressed: () {
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainScreenButton extends StatelessWidget {
  final String titleLabel;
  final VoidCallback? onPressed;
  final double width;

  const MainScreenButton({
    required this.titleLabel,
    this.onPressed,
    this.width = 150,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      fillColor: Color(0xFF16476A),
      constraints: BoxConstraints.tightFor(width: width, height: 56),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
      ),
      child: Text(
        titleLabel,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}