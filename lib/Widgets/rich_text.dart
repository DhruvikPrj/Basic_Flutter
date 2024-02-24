import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: RichText(
        text: const TextSpan(
          // default style applies by here
          style: TextStyle(color: Colors.cyanAccent, fontSize: 25),
          children: [
            TextSpan(text: 'Hello'),
            TextSpan(text:'Coders', style: TextStyle(color: Colors.orange,fontSize: 30,fontFamily: 'Protest_Riot')),
            TextSpan(text: 'Welcome to'),
            TextSpan(text:'Flutter', style: TextStyle(color: Colors.orange,fontSize: 30,fontFamily: 'Protest_Riot')),
          ]
        ),
      ),
    );
  }
}
