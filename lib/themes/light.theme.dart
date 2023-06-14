import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Color(0xFF00C569);
const lightColor = Color(0xFFFFFFFF);
const backgroundColor = Color(0xFFF5F5F5);

ThemeData lightTheme() {
  return ThemeData(
    // primarySwatch: primaryColor,
    brightness: brightness,
    // textTheme: TextTheme(
    //   bodyMedium:  TextStyle(color: Colors.red),
    //   bodyLarge:  TextStyle(fontSize: 40),
    //   labelLarge:  TextStyle(color: Colors.green),
    //   headlineMedium:  TextStyle(color: Colors.deepPurple)
    // ),
    // tabBarTheme:
    // accentIconTheme:
    // accentTextTheme:
    // appBarTheme:
    // bottomAppBarTheme:
    // buttonTheme: new ButtonThemeData(
    //   buttonColor: Colors.orange,
    //   textTheme: ButtonTextTheme.primary,
    // ),
    // cardTheme: CardTheme(
    //   elevation: 5,
    //   color: Colors.indigo,
    // ),
    // chipTheme:
    // dialogTheme:
    // floatingActionButtonTheme:
    // iconTheme:
    // inputDecorationTheme:
    // pageTransitionsTheme:
    // primaryIconTheme:
    // primaryTextTheme:
    // sliderTheme:
    primaryColor: primaryColor,
    hintColor: Colors.white,
    // fontFamily: 'Montserrat',
    // buttonColor: Color(0xFF00C569),
    // // scaffoldBackgroundColor: backgroundColor,
    // cardColor: Colors.white,
  );
}