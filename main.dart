// ignore: unused_import
// ignore: unused_import
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dev_login/Screens/OnBoarding/on_boarding_screen.dart';
// ignore: unused_import
import 'package:dev_login/Screens/SignUp/Components/background.dart';
// ignore: unused_import
import 'package:dev_login/Screens/Welcome/welcome_screen.dart';
import 'package:dev_login/Users_Courses_Mob/user_courses_mob_screen.dart';
import 'package:dev_login/const.dart';
// ignore: unused_import
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Developers 99',
      theme: ThemeData(
        primaryColor: KPrimaryColor,
        scaffoldBackgroundColor: const Color(0xffFFF2E9),
      ),
      home: AnimatedSplashScreen(
        backgroundColor: const Color(0xffFFF2E9),
        splashIconSize: 1000,
        splashTransition: SplashTransition.rotationTransition,
        splash: Image.asset("assets/images/developers99.png"),
        nextScreen: OnBoardingScreen(),
      ),
    );
  }
}

