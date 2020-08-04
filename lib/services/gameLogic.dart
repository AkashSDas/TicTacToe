String gameLogic(gameState) {
  String winner;

  // win game conditions
  var conditions = [
    // Row wise
    gameState[0] != 'empty' &&
        gameState[0] == gameState[1] &&
        gameState[1] == gameState[2],
    gameState[3] != 'empty' &&
        gameState[3] == gameState[4] &&
        gameState[4] == gameState[5],
    gameState[6] != 'empty' &&
        gameState[6] == gameState[7] &&
        gameState[7] == gameState[8],

    // Column wise
    gameState[0] != 'empty' &&
        gameState[0] == gameState[3] &&
        gameState[3] == gameState[6],
    gameState[1] != 'empty' &&
        gameState[1] == gameState[4] &&
        gameState[4] == gameState[7],
    gameState[2] != 'empty' &&
        gameState[2] == gameState[5] &&
        gameState[5] == gameState[8],

    // Diagonal wise
    gameState[0] != 'empty' &&
        gameState[0] == gameState[4] &&
        gameState[4] == gameState[8],
    gameState[2] != 'empty' &&
        gameState[2] == gameState[4] &&
        gameState[4] == gameState[6],
  ];

  // checking conditions
  if (conditions[0]) {
    winner = '${gameState[0]}';
  } else if (conditions[1]) {
    winner = '${gameState[3]}';
  } else if (conditions[2]) {
    winner = '${gameState[6]}';
  } else if (conditions[3]) {
    winner = '${gameState[0]}';
  } else if (conditions[4]) {
    winner = '${gameState[1]}';
  } else if (conditions[5]) {
    winner = '${gameState[2]}';
  } else if (conditions[6]) {
    winner = '${gameState[0]}';
  } else if (conditions[7]) {
    winner = '${gameState[2]}';
  } else if (!gameState.contains('empty')) {
    // Game draw
    winner = 'Game Draw';
  }

  return winner;
}
