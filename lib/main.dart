import 'package:final_project/pages/home/home.dart';
import 'package:final_project/pages/splashscreen/splshscreen.dart';
import 'package:final_project/pages/welcome1.dart';
import 'package:final_project/pages/welcome2.dart';
import 'package:final_project/pages/welcome3.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApplcation());
}

class MyApplcation extends StatelessWidget{
  const MyApplcation({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: SplashScreen.routeName,
    routes: {
      SplashScreen.routeName : (context)=>  const SplashScreen(),
      Welcome1.routeName :(context) =>Welcome1(),
      Welcome2.routeName :(context) => Welcome2(),
      Welcome3.routeName :(context) => Welcome3(),
      home.routeName :(context) => home(),

    },
  );
}