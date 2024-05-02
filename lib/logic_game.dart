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
      // oooooooooooooooooooo هجوم
     if (player.playero.Containsall(0, 1) && emptycells.contains(2)) {
      index = 2;
    } else if (player.playero.Containsall(3, 4) && emptycells.contains(5)) {
      index = 5;
    } else if (player.playero.Containsall(6, 7) && emptycells.contains(8)) {
      index = 8;
    } else if (player.playero.Containsall(0, 3) && emptycells.contains(6)) {
      index = 6;
    } else if (player.playero.Containsall(1, 4) && emptycells.contains(7)) {
      index = 7;
    } else if (player.playero.Containsall(2, 5) && emptycells.contains(8)) {
      index = 8;
    } else if (player.playero.Containsall(0, 4) && emptycells.contains(8)) {
      index = 8;
    } else if (player.playero.Containsall(2, 4) && emptycells.contains(6)) {
      index = 6;
    }
    // 2
    else if (player.playero.Containsall(0, 2) && emptycells.contains(1)) {
      index = 1;
    } else if (player.playero.Containsall(3, 5) && emptycells.contains(4)) {
      index = 4;
    } else if (player.playero.Containsall(6, 8) && emptycells.contains(7)) {
      index = 7;
    } else if (player.playero.Containsall(0, 6) && emptycells.contains(3)) {
      index = 3;
    } else if (player.playero.Containsall(1, 7) && emptycells.contains(4)) {
      index = 4;
    } else if (player.playero.Containsall(2, 8) && emptycells.contains(5)) {
      index = 5;
    } else if (player.playero.Containsall(0, 8) && emptycells.contains(4)) {
      index = 4;
    } else if (player.playero.Containsall(2, 6) && emptycells.contains(4)) {
      index = 4;
    }
    // 3
    else if (player.playero.Containsall(2, 1) && emptycells.contains(0)) {
      index = 0;
    } else if (player.playero.Containsall(5, 4) && emptycells.contains(3)) {
      index = 3;
    } else if (player.playero.Containsall(8, 7) && emptycells.contains(6)) {
      index = 6;
    } else if (player.playero.Containsall(6, 3) && emptycells.contains(0)) {
      index = 0;
    } else if (player.playero.Containsall(7, 4) && emptycells.contains(1)) {
      index = 1;
    } else if (player.playero.Containsall(8, 5) && emptycells.contains(2)) {
      index = 2;
    } else if (player.playero.Containsall(8, 4) && emptycells.contains(0)) {
      index = 0;
    } else if (player.playero.Containsall(6, 4) && emptycells.contains(2)) {
      index = 2;
    }
    // 1
    else if (player.playerX.Containsall(0, 1) && emptycells.contains(2)) {
      index = 2;
    } else if (player.playerX.Containsall(3, 4) && emptycells.contains(5)) {
      index = 5;
    } else if (player.playerX.Containsall(6, 7) && emptycells.contains(8)) {
      index = 8;
    } else if (player.playerX.Containsall(0, 3) && emptycells.contains(6)) {
      index = 6;
    } else if (player.playerX.Containsall(1, 4) && emptycells.contains(7)) {
      index = 7;
    } else if (player.playerX.Containsall(2, 5) && emptycells.contains(8)) {
      index = 8;
    } else if (player.playerX.Containsall(0, 4) && emptycells.contains(8)) {
      index = 8;
    } else if (player.playerX.Containsall(2, 4) && emptycells.contains(6)) {
      index = 6;
    }
    // 2
    else if (player.playerX.Containsall(0, 2) && emptycells.contains(1)) {
      index = 1;
    } else if (player.playerX.Containsall(3, 5) && emptycells.contains(4)) {
      index = 4;
    } else if (player.playerX.Containsall(6, 8) && emptycells.contains(7)) {
      index = 7;
    } else if (player.playerX.Containsall(0, 6) && emptycells.contains(3)) {
      index = 3;
    } else if (player.playerX.Containsall(1, 7) && emptycells.contains(4)) {
      index = 4;
    } else if (player.playerX.Containsall(2, 8) && emptycells.contains(5)) {
      index = 5;
    } else if (player.playerX.Containsall(0, 8) && emptycells.contains(4)) {
      index = 4;
    } else if (player.playerX.Containsall(2, 6) && emptycells.contains(4)) {
      index = 4;
    }
    // 3
    else if (player.playerX.Containsall(2, 1) && emptycells.contains(0)) {
      index = 0;
    } else if (player.playerX.Containsall(5, 4) && emptycells.contains(3)) {
      index = 3;
    } else if (player.playerX.Containsall(8, 7) && emptycells.contains(6)) {
      index = 6;
    } else if (player.playerX.Containsall(6, 3) && emptycells.contains(0)) {
      index = 0;
    } else if (player.playerX.Containsall(7, 4) && emptycells.contains(1)) {
      index = 1;
    } else if (player.playerX.Containsall(8, 5) && emptycells.contains(2)) {
      index = 2;
    } else if (player.playerX.Containsall(8, 4) && emptycells.contains(0)) {
      index = 0;
    } else if (player.playerX.Containsall(6, 4) && emptycells.contains(2)) {
      index = 2;
    }

   else {
      Random random = Random();
      int indexrandom = random.nextInt(emptycells.length);
      index = emptycells[indexrandom];
    }

    playgame(index, activeplayer);
  }
}
