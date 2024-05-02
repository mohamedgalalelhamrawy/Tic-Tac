import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tic_tac/logic_game.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String activeplayer = "X";
  bool gameover = false;
  String result = 'ay 7aga';
  int turns = 0;
  Game game = Game();
  bool iSswitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            // 1
            SwitchListTile.adaptive(
                title: const Text(
                  "Turn on/off Two Players",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
                value: iSswitch,
                onChanged: (bool newvalue) {
                  iSswitch = newvalue;
                }),

            // 2
            Text(
              "IT'S $activeplayer TURN",
              style: const TextStyle(
                fontSize: 52,
              ),
            ),
            // 3
// ///////////////////////////////////////
            // 4
            Text(
              result,
              style: const TextStyle(
                fontSize: 42,
              ),
            ),
            // 5
            ElevatedButton.icon(
                onPressed: () {
                  activeplayer = "X";
                  gameover = false;
                  result = '';
                  turns = 0;
                },
                icon: const Icon(Icons.replay),
                label: const Text("Repeat The Game"))
          ],
        ),
      ),
    );
  }
}
