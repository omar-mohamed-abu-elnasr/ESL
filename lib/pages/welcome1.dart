import 'package:final_project/pages/welcome2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome1 extends StatefulWidget {
  static const String routeName = "welcome1";

  Welcome1({super.key});

  @override
  State<Welcome1> createState() => _HomeLayoutViewState();
}

class _HomeLayoutViewState extends State<Welcome1> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFE5E9F1),
      body: Column(/*mainAxisAlignment: MainAxisAlignment.center,*/
        children: [
          Container(margin: EdgeInsets.only(top: 100),
            child: Row(mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text("Welcome to  ",
                      style: GoogleFonts.coda(
                          fontSize: 24, color: Color(0xFF7E7C7C))),
                ),
                Image(image: AssetImage("assets/images/ESL.png"))
              ],
            ),
          ),
          SizedBox(height: 15,),
          Image(
            image: AssetImage("assets/images/hello.png"),
            height: 240,
            width: 400,
            fit: BoxFit.contain,
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            child: Text(
              """
       Our application provides 
         Real-Time Egyptian Sign
       Language ‘ESL’ Translation 
               for Deaf people to
                    communicate
                      """,
              style: GoogleFonts.coda(
                  color: Color(0xFF010326),
                  fontSize: 24,
                  fontWeight: FontWeight.w500
              ),),
          ),
          Container(
            child: Image(
              image: AssetImage("assets/images/loading.png"),
              height: 73,
              width: 330,
              fit: BoxFit.contain,
            ),
          ),
          Container(margin: EdgeInsets.only(left: 180),
            height: 50,width: 120,
            child: GestureDetector(
                onTap:() {
                  Navigator.pushNamed(context, Welcome2.routeName);
                }, child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight:Radius.circular(20),topLeft:Radius.circular(20),bottomLeft:Radius.circular(20)),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors:[Color(0xFF719CC8),Color(0xFF8D36C6)] )
              ),
              child:Text("Next",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500)),)),
          )
        ],
      ),
    );
  }
}
