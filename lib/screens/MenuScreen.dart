import 'package:flutter/material.dart';

import '../style/global.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Tic Tac Toe',
            style: Headline2,
          ),
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
                  padding: EdgeInsets.only(top: 30.0, bottom: 10.0),
                ),
                Text(
                  '🎮 Game Modes 🎮',
                  style: Subtitle1,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.0, bottom: 15.0),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/twoPlayInSameScreen');
                  },
                  child: Text(
                    '2 🤖 play in same screen',
                    style: BodyText1,
                  ),
                  padding: EdgeInsets.fromLTRB(20.0, 17.0, 20.0, 17.0),
                  color: brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 15.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
