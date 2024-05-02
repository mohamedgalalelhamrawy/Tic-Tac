import 'dart:math';

class player {
  static List<int> playerX = [];
  static List<int> playero = [];
}

class Game {
  void playgame(int index, String activeplayer) {
    if (activeplayer == "X") {
      player.playerX.add(index);
    } else {
      player.playero.add(index);
    }
  }

  checkwinner() {}

  Future<void> autoplay(activeplayer) async {
    int index = 0;
    List<int> emptycells = [];
    for (int i = 0; i < 9; i++) {
      if (!(player.playerX.contains(i) || player.playero.contains(i))) {
        emptycells.add(i);
      }
    }
    Random random = Random();
    int indexrandom = random.nextInt(emptycells.length);

    index = emptycells[indexrandom];
    playgame(index, activeplayer);
  }
}
