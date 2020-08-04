import 'package:flutter/material.dart';

import '../services/gameLogic.dart';
import '../style/global.dart';

class TwoPlayInSameScreen extends StatefulWidget {
  @override
  _TwoPlayInSameScreenState createState() => _TwoPlayInSameScreenState();
}

class _TwoPlayInSameScreenState extends State<TwoPlayInSameScreen> {
  // Asset images
  AssetImage edit = AssetImage('assets/images/edit.png');
  AssetImage cross = AssetImage('assets/images/cross.png');
  AssetImage circle = AssetImage('assets/images/circle.png');

  // Class variables
  bool isCross;
  String winner;
  String winnerTmp;
  String gameResetMessage;
  List<String> gameState;

  // Initialize the state of game as empty
  void initialState() {
    setState(() {
      this.isCross = true;
      this.gameState = List<String>.generate(9, (index) => 'empty');
      this.winner = '';
      this.gameResetMessage = '';
    });
  }

  @override
  void initState() {
    super.initState();
    this.initialState();
  }

  // Rest game
  void resetGame() {
    this.initialState();
  }

  // TODO
  // Reset game after 5 secs when game is finished
  // void resetGameAfterFinish() {}

  // Check win logic
  void checkWin() {
    winnerTmp = gameLogic(this.gameState);
    if (winnerTmp != null) {
      setState(() {
        this.winner = winnerTmp;
      });
    }
  }

  // Play game
  void playGame(int index) {
    if (this.winner != '') {
      return null;
    } else if (this.gameState[index] == 'empty') {
      setState(() {
        this.gameState[index] = this.isCross ? 'Cross' : 'Circle';
        this.isCross = !this.isCross;
      });
      this.checkWin();
      setState(() {
        if (this.winner != '') {
          if (this.winner == 'Game Draw') {
            this.winner = '🚫 ${this.winner} 🚫';
          } else if (this.winner == 'Cross' || this.winner == 'Circle') {
            this.winner = '🎉 ${this.winner} Wins 🎉';
          }
          // this.gameResetMessage = 'Game will be reset in 5secs';
        }
      });
      // this.resetGameAfterFinish();
    }
  }

  // Get asset images for boxes in tictactoe board
  AssetImage getImage(String value) {
    switch (value) {
      case ('empty'):
        return edit;
      case ('Cross'):
        return cross;
      case ('Circle'):
        return circle;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tic Tac Toe',
          style: Headline2,
        ),
        backgroundColor: green,
      ),
      body: Center(
        child: SizedBox.expand(
          child: Container(
            color: yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 5.0),
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Center(
                    child: Text(
                      this.winner,
                      style: Subtitle1,
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.all(5.0),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.0,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                    ),
                    itemCount: this.gameState.length,
                    itemBuilder: (context, i) => SizedBox(
                      width: 100.0,
                      height: 100.0,
                      child: MaterialButton(
                        onPressed: () {
                          this.playGame(i);
                        },
                        child: Image(
                          image: this.getImage(this.gameState[i]),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Center(
                    child: Text(
                      this.gameResetMessage,
                      style: Caption,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                ),
                RaisedButton(
                  onPressed: () {
                    this.resetGame();
                  },
                  child: Text(
                    '⚡ Reset Game',
                    style: BodyText1,
                  ),
                  padding: EdgeInsets.fromLTRB(40.0, 17.0, 40.0, 17.0),
                  color: brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
