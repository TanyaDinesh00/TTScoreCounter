class Score {
  int score1 = 0, score2 = 0;
  String serve1 = "*", serve2 = "", Victory = "", rounds = "";
  bool end = false;
  int serve = 1, count = 0;
  int game = 1, won1 = 0, won2 = 0;
  bool s_end = false;
  //bool justwon = false;

  void hardReset() {
    game = 0;
    won1 = 0;
    won2 = 0;
    Victory = "";
    rounds = "";
    game = 1;
    s_end = false;
    reset();
  }

  void s1() {
    if ((score1 >= 10 && (score1 - 1) >= score2) && end == false) {
      end = true;
      score1++;
      rounds += ' $score1-$score2 ';
      Victory = "TanManPro Wins Game: $game";
      won1 += 1;
      game += 1;
      if (won1 == 3 || won2 == 3) {
        s_end = true;
        Victory = "TanManPRO Wins the Series";
      }
      reset();
      return;
    }
    if (end == false) {
      Victory = "";
    } // Resetting victory
    if (end == false && (score1 >= 10 && score2 >= 10)) {
      score1++;
      cs();
      return;
    }
    if (end == false) {
      score1++;
      count++;
      if (count % 2 == 0) {
        cs();
      }
    }
  }

  void s2() {
    if ((score2 >= 10 && (score2 - 1) >= score1) && end == false) {
      end = true;
      score2++;
      rounds += ' $score1-$score2 ';
      Victory = "DineshBE Wins Game: $game";
      won2 += 1;
      game += 1;
      if (won1 == 3 || won2 == 3) {
        s_end = true;
        Victory = "DineshBE Wins the Series";
      }
      reset();
      return;
    }
    if (end == false) {
      Victory = "";
    }
    if (end == false && (score1 >= 10 && score2 >= 10)) {
      score2++;
      cs();
      return;
    }
    if (end == false) {
      score2++;
      count++;
      if (count % 2 == 0) {
        cs();
      }
    }
  }

  void reset() {
    if (game % 2 == 1) {
      score1 = 0;
      score2 = 0;
      serve1 = "*";
      serve2 = "";
      serve = 1;
      end = false;
      count = 0;
    } else {
      score1 = 0;
      score2 = 0;
      serve1 = "";
      serve2 = "*";
      serve = 2;
      end = false;
      count = 0;
    }
  }

  void cs() {
    if (serve == 1) {
      serve1 = "";
      serve2 = "*";
      serve = 2;
      return;
    }
    if (serve == 2) {
      serve1 = "*";
      serve2 = "";
      serve = 1;
      return;
    }
  }

  String get_game() {
    return '$game';
  }

  String get_vic() {
    return '$Victory';
  }

  String get_score1() {
    return '$score1\n$serve1';
  }

  String get_score2() {
    return '$score2\n$serve2';
  }

  String get_won1() {
    return '$won1';
  }

  String get_won2() {
    return '$won2';
  }

  String get_rounds() {
    return '$rounds';
  }
}
