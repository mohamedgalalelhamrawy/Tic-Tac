import 'package:flutter/material.dart';
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
            Expanded(
                child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1,
              padding: const EdgeInsets.all(16),
              children: List.generate(
                  9,
                  (index) => InkWell(
                        onTap: gameover
                            ? null
                            : () {
                                return _ontap(index);
                              },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).shadowColor,
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                            child: Text(
                              player.playerX.contains(index)
                                  ? "X"
                                  : player.playero.contains(index)
                                      ? "O"
                                      : " ",
                              style: TextStyle(
                                  color: player.playerX.contains(index)
                                      ? Colors.blue
                                      : Colors.pink,
                                  fontSize: 52),
                            ),
                          ),
                        ),
                      )),
            )),
            // 4
            Text(
              result,
              style: const TextStyle(
                fontSize: 42,
              ),
            ),
            // 5
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).splashColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ))),
                  onPressed: () {
                    setState(() {
                      player.playerX = [];
                      player.playero = [];
                      activeplayer = "X";
                      gameover = false;
                      result = '';
                      turns = 0;
                    });
                  },
                  icon: const Icon(
                    Icons.replay,
                    color: Colors.white,
                  ),
                  label: const Text(
                    "Repeat The Game",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }

  _ontap(int index) async {
    if (!(player.playerX.contains(index) || player.playero.contains(index))) {
      game.playgame(index, activeplayer);
      UpdateState();
      if (!iSswitch && !gameover) {
       await game.autoplay(activeplayer);
        UpdateState();
      }
    }
  }

  void UpdateState() {
    return setState(() {
      activeplayer = activeplayer == "X" ? "O" : "X";
    });
  }
}
