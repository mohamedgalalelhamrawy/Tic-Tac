import 'dart:math';

class player {
  static List<int> playerX = [];
  static List<int> playero = [];
}

extension ContainsAll on List {
  bool Containsall(int x, int y, [z]) {
    if (z == null) {
      return this.contains(x) && this.contains(y);
    } else {
      return this.contains(x) && this.contains(y) && this.contains(z);
    }
  }
}

class Game {
  void playgame(int index, String activeplayer) {
    if (activeplayer == "X") {
      player.playerX.add(index);
    } else {
      player.playero.add(index);
    }
  }

  String checkwinner() {
    String winner = '';
    if (player.playerX.Containsall(0, 1, 2)) {
      winner = "X";
    } else if (player.playerX.Containsall(3, 4, 5)) {
      winner = "X";
    } else if (player.playerX.Containsall(6, 7, 8)) {
      winner = "X";
    } else if (player.playerX.Containsall(0, 3, 6)) {
      winner = "X";
    } else if (player.playerX.Containsall(1, 4, 7)) {
      winner = "X";
    } else if (player.playerX.Containsall(2, 5, 8)) {
      winner = "X";
    } else if (player.playerX.Containsall(0, 4, 8)) {
      winner = "X";
    } else if (player.playerX.Containsall(2, 4, 6)) {
      winner = "X";
    }
    // ooooooooo
    else if (player.playero.Containsall(0, 1, 2)) {
      winner = "O";
    } else if (player.playero.Containsall(3, 4, 5)) {
      winner = "O";
    } else if (player.playero.Containsall(6, 7, 8)) {
      winner = "O";
    } else if (player.playero.Containsall(0, 3, 6)) {
      winner = "O";
    } else if (player.playero.Containsall(1, 4, 7)) {
      winner = "O";
    } else if (player.playero.Containsall(2, 5, 8)) {
      winner = "O";
    } else if (player.playero.Containsall(0, 4, 8)) {
      winner = "O";
    } else if (player.playero.Containsall(2, 4, 6)) {
      winner = "O";
    } else {
      winner = '';
    }
    return winner;
  }

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
