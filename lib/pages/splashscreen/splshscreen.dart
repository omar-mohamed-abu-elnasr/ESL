import 'dart:async';
import 'package:final_project/pages/welcome1.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  static const String routeName = "splash-screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
          () {
        Navigator.pushReplacementNamed(context, Welcome1.routeName);
      },
    );

    var mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Image(
          image: const AssetImage("assets/images/SplashScreenLight.png"),
          width: mediaQuery.width,
          height: mediaQuery.height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
