import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/components/tile.dart';

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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Player 1: "),
                  Text("Player 2: "),
                ],
              ),

              // Tiles Column
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Tile(
                          onPress: () {

                          },
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Tile(
                          )
                      ),
                      Expanded(
                          flex: 1,
                          child: Tile(

                          )
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Tile(
                          onPress: () {

                          },
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Tile(
                          )
                      ),
                      Expanded(
                          flex: 1,
                          child: Tile(

                          )
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Tile(
                          onPress: () {

                          },
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Tile(
                          )
                      ),
                      Expanded(
                          flex: 1,
                          child: Tile(

                          )
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
