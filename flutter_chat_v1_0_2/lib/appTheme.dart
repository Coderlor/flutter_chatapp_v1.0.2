// ignore_for_file: file_names

import 'package:flutter/material.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData(
    primaryColor: kPrimaryColor,
    colorScheme: const ColorScheme.light(
        primary: kPrimaryColor, secondary: kPrimaryColor),
    indicatorColor: Colors.white,
    splashColor: Colors.white24,
    splashFactory: InkRipple.splashFactory,
    hintColor: kPrimaryColor,
    fontFamily: "WorkSans",
    shadowColor: Theme.of(context).disabledColor,
    dividerColor: const Color(0xff707070),
    canvasColor: Colors.white,
    // ignore: deprecated_member_use
    backgroundColor: const Color(0xFFFFFFFF),
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    // ignore: deprecated_member_use
    errorColor: kErrorColor,
    textTheme: getTextTheme(),
    primaryTextTheme: getTextTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: kPrimaryColor,
    colorScheme: const ColorScheme.dark(),
    indicatorColor: Colors.white,
    splashColor: Colors.white24,
    splashFactory: InkRipple.splashFactory,
    hintColor: kPrimaryColor,
    fontFamily: "WorkSans",
    shadowColor: Theme.of(context).disabledColor,
    dividerColor: const Color(0xff707070),
    canvasColor: Colors.white,
    // ignore: deprecated_member_use
    backgroundColor: Colors.black,
    // ignore: deprecated_member_use
    errorColor: kErrorColor,
    textTheme: getTextTheme(),
    primaryTextTheme: getTextTheme(),
    //accentTextTheme: getTextTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme getTextTheme() {
  return const TextTheme(
    // ignore: deprecated_member_use
    bodyText1: TextStyle(fontFamily: "WorkSans"),
    // ignore: deprecated_member_use
    bodyText2: TextStyle(fontFamily: "WorkSans"),
    // ignore: deprecated_member_use
    headline1: TextStyle(fontFamily: "WorkSans"),
    // ignore: deprecated_member_use
    headline2: TextStyle(fontFamily: "WorkSans"),
    // ignore: deprecated_member_use
    headline3: TextStyle(fontFamily: "WorkSans"),
    // ignore: deprecated_member_use
    headline4: TextStyle(fontFamily: "WorkSans"),
    // ignore: deprecated_member_use
    headline5: TextStyle(fontFamily: "WorkSans"),
    // ignore: deprecated_member_use
    headline6: TextStyle(fontFamily: "WorkSans"),
    // ignore: deprecated_member_use
    subtitle1: TextStyle(fontFamily: "WorkSans"),
    // ignore: deprecated_member_use
    subtitle2: TextStyle(fontFamily: "WorkSans"),
    // ignore: deprecated_member_use
    button: TextStyle(fontFamily: "WorkSans"),
    // ignore: deprecated_member_use
    caption: TextStyle(fontFamily: "WorkSans"),
    // ignore: deprecated_member_use
    overline: TextStyle(fontFamily: "WorkSans"),
  );
}

const kPrimaryColor = Color(0xffF76C6C);
// const kSecondaryColor = Color(0xFFFE9901);
// const kContentColorLightTheme = Color(0xFF1D1D35);
// const kContentColorDarkTheme = Color(0xFFF5FCF9);
const kWarningColor = Color(0xFFF3BB1C);
const kErrorColor = Color(0xFFF03738);

const kDefaultPadding = 20.0;

// ignore: prefer_const_constructors
final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
