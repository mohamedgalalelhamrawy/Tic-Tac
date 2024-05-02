
class player {

    static   List<int> playerX = [];
    static   List<int> playero = [];
}

class Game {
  void playgame(int index, String activeplayer){

    if ( activeplayer == "X"){
      player.playerX.add(index);
    }else {
      player.playero.add(index);
    }
  }
}