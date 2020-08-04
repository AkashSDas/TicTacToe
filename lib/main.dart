import 'package:flutter/material.dart';

import 'screens/screens.dart';
import 'style/global.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  ThemeData _theme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        textTheme: TextTheme(
          headline1: Headline1,
        ),
      ),
      textTheme: TextTheme(
        headline2: Headline2,
        bodyText1: BodyText1,
        caption: Caption,
        subtitle1: Subtitle1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      debugShowCheckedModeBanner: false,
      theme: this._theme(),
      home: LoadingScreen(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => MenuScreen(),
        '/twoPlayInSameScreen': (BuildContext context) => TwoPlayInSameScreen(),
      },
    );
  }
}
