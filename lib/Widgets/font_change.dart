import 'package:flutter/material.dart';

class FontChange extends StatelessWidget {
  const FontChange({super.key});

  @override
  Widget build(BuildContext context) {
    //Adding Custom Fonts In Text:-
    return const Text(
          "Hello",
          style: TextStyle(
            color: Colors.amberAccent,
            fontFamily: 'Protest_Riot',
            fontSize: 50,
            fontWeight: FontWeight.w500,
          ),
        );
  }
}
