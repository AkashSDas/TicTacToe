import 'package:flutter/material.dart';

// Font sizes
const LargeTextSize = 40.0;
const MediumTextSize = 30.0;
const BodyTextSize = 27.0;
const SmallTextSize = 24.0;

// Font families
const String Gentona = 'Gentona';
const String Righteous = 'Righteous';

// Colors
const Color white = Color(0xFFF1F7ED);
const Color red = Color(0xFFB33951);
const Color brown = Color(0xFF54494B);
const Color green = Color(0xFF91C7B1);
const Color yellow = Color(0xFFE3D081);

const Headline1 = TextStyle(
  color: white,
  fontFamily: Gentona,
  fontSize: LargeTextSize,
  fontWeight: FontWeight.w900,
);

const Headline2 = TextStyle(
  color: white,
  fontFamily: Gentona,
  fontSize: MediumTextSize,
  fontWeight: FontWeight.w300,
);

const BodyText1 = TextStyle(
  color: white,
  fontFamily: Gentona,
  fontSize: BodyTextSize,
  fontWeight: FontWeight.w300,
);

const Caption = TextStyle(
  color: red,
  fontFamily: Righteous,
  fontSize: BodyTextSize,
  fontWeight: FontWeight.w300,
);

const Subtitle1 = TextStyle(
  color: red,
  fontFamily: Righteous,
  fontSize: MediumTextSize,
  fontWeight: FontWeight.w300,
);
