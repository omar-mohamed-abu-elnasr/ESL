import 'package:flutter/material.dart';

class Dictionary extends StatelessWidget {
  const Dictionary({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFFE5E9F1),
      body: Column(
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(margin: EdgeInsets.only(top: 50),
                  child: Text("The language dictionary",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w500))),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(margin: EdgeInsets.only(top: 30),
                  child: Text("The ESL Alphabets & Numbers",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400))),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(margin: EdgeInsets.only(top: 35),
                  child: Image(image: AssetImage("assets/images/dictionary.png"),width: 400,height: 400,)),
            ],
          )
        ],
      ),
    );
  }
}