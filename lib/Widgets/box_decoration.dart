import 'package:flutter/material.dart';

class Box_Decoration extends StatelessWidget {
  const Box_Decoration({super.key});

  @override
  Widget build(BuildContext context) {
    // ==> Use Of BoxDecoration :
    return Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
          color: Colors.cyanAccent,
            // borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Colors.purple,
            width: 5,
          ),
            boxShadow: const [
              BoxShadow(
                blurRadius: 25,
                spreadRadius: 7,
                color: Color.fromARGB(216, 83, 255, 24)
              ),
            ],
            shape: BoxShape.circle,
        )
    );
  }
}
