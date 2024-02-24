import 'package:flutter/material.dart';

class ListView_Components extends StatelessWidget {
  const ListView_Components({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        // reverse: true,
        padding: const EdgeInsets.all(8.0),
        children: const [ Text("This is Text",
        style: TextStyle(
        color: Colors.purple,
        fontWeight: FontWeight.w900,
        ),
        ),
        Text("This is Text",
        style: TextStyle(
        color: Colors.purple,
        fontWeight: FontWeight.w900,
        ),
        ),
        Text("This is Text",
        style: TextStyle(
        color: Colors.purple,
        fontWeight: FontWeight.w900,
    ),
    ),
    Text("This is Text",
    style: TextStyle(
    color: Colors.purple,
    fontWeight: FontWeight.w900,
    ),
    ),
    Text("This is Text",
    style: TextStyle(
    color: Colors.purple,
    fontWeight: FontWeight.w900,
    ),
    ),
    ],
    );
  }
}
