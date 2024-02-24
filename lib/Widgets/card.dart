import 'package:flutter/material.dart';

class Card_Widget extends StatelessWidget {
  const Card_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    // Use of Card : Gives a 3D look.
    return const Card(
      elevation: 20,
      shadowColor: Colors.green,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(Icons.add_business),
          title: Text(
            "Card Demo",
            style: TextStyle(color: Colors.black, fontFamily: 'Protest_Riot'),
          ),
          trailing: Icon(Icons.access_alarm),
        ),
      ),
    );
  }
}
