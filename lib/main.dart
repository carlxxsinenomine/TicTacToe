import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/game_page.dart';
import 'package:tic_tac_toe/screens/main_page.dart';

void main() => runApp(TicTacToe());

class TicTacToe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'TicTacToe',
      theme: ThemeData.dark().copyWith(
        useMaterial3: false, // dunno but without this, my custom style won't take effect
        scaffoldBackgroundColor: Color(0xFFFFF085), //  Change the bg color of the Scaffold
        colorScheme: ColorScheme.light(
          primary: Color(0xFF0A0E21),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (MainPageContext) => MainPage(),
        '/game_page': (GamePageContext) => GamePage(),
      },
    );
  }
}