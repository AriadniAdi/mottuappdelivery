import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData themeData() => ThemeData(
      iconTheme: const IconThemeData(color: mottuGreen),
      scaffoldBackgroundColor: darkGreyColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
      ),
      switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.all(mottuGreen),
          trackColor: MaterialStateProperty.resolveWith((states) =>
              states.contains(MaterialState.selected)
                  ? mottuGreen
                  : Colors.grey)),
      textTheme: const TextTheme(
        labelMedium: TextStyle(fontSize: 12, color: Colors.white),
        labelLarge: TextStyle(fontSize: 14, color: Colors.white),
        titleMedium: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
