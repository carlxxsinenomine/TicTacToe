import 'package:flutter/material.dart';

void main() => runApp(TicTacToe());

class TicTacToe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        useMaterial3: false, // dunno but without this, my custom style won't take effect
        scaffoldBackgroundColor: Color(0xFF132440), //  Change the bg color of the Scaffold
        colorScheme: ColorScheme.light(
          primary: Color(0xFF0A0E21),
        ),

      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text("TicTacToe")
          ),
        ),
      ),
    );
  }
}

