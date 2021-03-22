import 'package:flutter/material.dart';

abstract class WenderPalette {
  //https://github.com/dracula/dracula-theme/

  //#282a36 Background
  static Color background = Color.fromRGBO(40, 42, 54, 1);

  //#44475a Current Line
  static Color currentLine = Color.fromRGBO(68, 71, 90, 1);

  //#44475a Selection
  static Color selection = Color.fromRGBO(68, 71, 90, 1);

  //#f8f8f2 Foreground
  static Color foreground = Color.fromRGBO(248, 248, 242, 1);

  //#6272a4 Comment
  static Color comment = Color.fromRGBO(98, 114, 164, 1);

  //#8be9fd Cyan
  static Color cyan = Color.fromRGBO(139, 233, 253, 1);

  //#50fa7b Green
  static Color green = Color.fromRGBO(80, 250, 123, 1);

  //#ffb86c Orange
  static Color orange = Color.fromRGBO(255, 184, 108, 1);

  //#ff79c6 Pink
  static Color pink = Color.fromRGBO(255, 121, 198, 1);

  //#bd93f9 Purple
  static Color purple = Color.fromRGBO(189, 147, 249, 1);

  //#ff5555 Red
  static Color red = Color.fromRGBO(255, 85, 85, 1);

  //#f1fa8c Yellow
  static Color yellow = Color.fromRGBO(241, 250, 140, 1);
}

abstract class WenderStyles {
  static ThemeData materialTheme = ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.light,
    //primaryColor: WenderPalette.purple,
    //accentColor: WenderPalette.pink,
    //backgroundColor: WenderPalette.background,
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      //color: WenderPalette.selection,      
      iconTheme: IconThemeData(
        //color: WenderPalette.foreground,
      ),
      actionsIconTheme: IconThemeData(
        //color: WenderPalette.foreground,
      ),
    ),

    buttonTheme: ButtonThemeData(
      //buttonColor: WenderPalette.purple,
      textTheme: ButtonTextTheme.primary,
    ),

    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
        //color: WenderPalette.foreground,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          //color: WenderPalette.currentLine,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          //color: WenderPalette.red,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          //color: WenderPalette.purple,
        ),
      ),
    ),

    tabBarTheme: TabBarTheme(
      //labelColor: WenderPalette.foreground,
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      //backgroundColor: WenderPalette.purple,
    ),

    snackBarTheme: SnackBarThemeData(
      //actionTextColor: WenderPalette.purple,
      //backgroundColor: WenderPalette.foreground,
    ),

    bottomAppBarTheme: BottomAppBarTheme(
      //color: WenderPalette.selection,
    ),

    textTheme: TextTheme(
      headline1: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w200,
        decoration: TextDecoration.none,
        fontFamily: 'Hind',
        fontSize: 40,
        letterSpacing: .1,
      )
    ),

    // Define the default font family.
    fontFamily: 'Montserrat',
  );
}