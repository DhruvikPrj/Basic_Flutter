import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.green,
        ),
        Container(
          height: 180,
          width: 180,
          color: Colors.deepOrange,
        ),
        Positioned( // Used to give Position to Widgets
          left: 20,
          top: 20,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
