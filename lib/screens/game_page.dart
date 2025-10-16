import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Players Row
              Row(

              ),

              // Tiles Column
              Column(
                // 3x3
                children: <Widget>[
                  Row(),
                  Row(),
                  Row(),
                ],
              )
            ],
          ),
        )
    );
  }
}
