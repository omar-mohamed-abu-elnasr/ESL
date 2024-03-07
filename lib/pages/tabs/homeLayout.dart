import 'package:flutter/material.dart';

class HomeLayOut extends StatelessWidget {
  const HomeLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E9F1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: Text("Home")),
            ],
          ),
        ],
      ),
    );
  }
}
