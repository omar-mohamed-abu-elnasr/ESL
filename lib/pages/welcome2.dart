import 'package:final_project/pages/welcome3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/button.dart';

class Welcome2 extends StatefulWidget {
  static const String routeName = "welcome2";

  Welcome2({super.key});

  @override
  State<Welcome2> createState() => _HomeLayoutViewState();
}

class _HomeLayoutViewState extends State<Welcome2> {
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
                  child: Text("No need for an account",
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
            image: AssetImage("assets/images/Attention.png"),
            height: 240,
            width: 400,
            fit: BoxFit.contain,
          ),
          Container(
            margin: EdgeInsets.only(top: 60),
            alignment: Alignment.center,
            child: Text(
              """
       You can easily capture the
      sign language and turn it to
                       text or audio
                      """,
              style: GoogleFonts.coda(
                  color: Color(0xFF010326),
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Image(
            image: AssetImage("assets/images/loading2.png"),
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
                      Navigator.pushNamed(context, Welcome3.routeName);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
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
