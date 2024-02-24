import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Wrap( // If any Widgets goes outside of the Size, it automatically align below.
      alignment: WrapAlignment.center,
      direction: Axis.horizontal, //
      spacing: 11,
      runSpacing: 11,
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.green,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.limeAccent,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.amberAccent,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.deepOrange,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.purple,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.orange,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.cyanAccent,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.purple,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.limeAccent,
        ),
      ],
    );
  }
}
