import 'package:flutter/material.dart';
import 'package:greenmarket/core/colors/colors.dart';
import 'package:greenmarket/features/main/home_main.dart';
import 'package:greenmarket/features/page/explore/widget/detals.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontWeight: FontWeight.w600),
          bodyMedium: TextStyle(fontWeight: FontWeight.w600),
          bodySmall: TextStyle(fontWeight: FontWeight.w600),
          titleLarge: TextStyle(fontWeight: FontWeight.w700),
          titleMedium: TextStyle(fontWeight: FontWeight.w700),
          titleSmall: TextStyle(fontWeight: FontWeight.w700),
        ),
        //bottom
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: ColorsApp.filed,
          selectedItemColor: ColorsApp.primary,
          unselectedItemColor: ColorsApp.greey,
          landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: (HomeMain()),
      // home: Detals(),
    );
  }
}
