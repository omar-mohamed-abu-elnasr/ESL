import 'package:final_project/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/button.dart';

class Welcome3 extends StatefulWidget {
  static const String routeName = "welcome3";

  Welcome3({super.key});

  @override
  State<Welcome3> createState() => _HomeLayoutViewState();
}

class _HomeLayoutViewState extends State<Welcome3> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFE5E9F1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text("Let’s get start",
                      style: GoogleFonts.coda(
                          fontSize: 24, color: Color(0xFF7E7C7C))),
                )
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Image(
            image: AssetImage("assets/images/PictureWelcome3.png"),
            height: 240,
            width: 400,
            fit: BoxFit.contain,
          ),
          Container(
            margin: EdgeInsets.only(top: 60),
            alignment: Alignment.center,
            child: Text(
              """
       It helps you keep in touch,
      understand and even get to 
            learn more about ESL
                      """,
              style: GoogleFonts.coda(
                  color: Color(0xFF010326),
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Image(
            image: AssetImage("assets/images/loading3.png"),
            height: 90,
            width: 330,
            fit: BoxFit.contain,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 50,
                width: 120,
                child:
                MyOutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  gradient: LinearGradient(
                      end: Alignment.bottomRight,
                      begin: Alignment.topRight,
                      colors: [Color(0xFF719CC8), Color(0xFF8D36C6)]),
                  child: Text("Back",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF370B54),
                          fontSize: 22,
                          fontWeight: FontWeight.w400)),
                ),
              ),
              Container(
                height: 50,
                width: 120,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, home.routeName);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xFF719CC8), Color(0xFF8D36C6)])),
                      child: Text("Next",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
