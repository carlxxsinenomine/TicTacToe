import 'package:flutter/material.dart';

import '../components/main_button.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch relative horizontally since it's a Column
          mainAxisAlignment: MainAxisAlignment.center, // Vertical alignment
          children: <Widget>[
            // Title
            Text(
              'Tic-Tac-Toe',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF6FA4AF),
                fontWeight: FontWeight.bold,
                fontFamily: "Courgette",
                fontSize: 50,
              ),
            ),
            // Spacing between the main Title and the Buttons
            SizedBox(
              height: 100,
            ),
            // center the button cause when crossAxis is stretched
            // the width of the button is also stretched
            // so centering makes the MainScreenButton relative to the Center widget
            Center(
              child: MainButton(
                titleLabel: 'Play with AI',
                width: 200,
                onPressed: () {
                },
              ),
            ),
            // Spacing between the two Buttons
            SizedBox(
              height: 10,
            ),
            Center(
              child: MainButton(
                titleLabel: 'Play with a friend',
                width: 200,
                onPressed: () {
                  Navigator.pushNamed(context, '/game_page');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
