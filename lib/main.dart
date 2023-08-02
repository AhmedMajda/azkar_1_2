
import 'package:azkar_1_2/core/routes.dart';
import 'package:azkar_1_2/presentation/splash_screen.dart';
import 'package:flutter/material.dart';

import 'presentation/about_screen.dart';
import 'presentation/main_screen.dart';
import 'core/resources/manager_font size.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: ManagerFontSizes.s20,
            color: Colors.black,
          ),
        ),
      ),
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen: (context) => const SplashScreen(),
        Routes.mainScreen: (context) =>  MainScreen(),
        Routes.aboutScreen: (context) => const AboutScreen(),
      },
    );
  }
}