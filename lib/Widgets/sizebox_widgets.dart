import 'package:flutter/material.dart';

class SizeBox extends StatelessWidget {
  const SizeBox({super.key});

  @override
  Widget build(BuildContext context) {
    // Instead of Container
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        SizedBox(// Mainly it is used for spacing between widgets.
          //.expand: it acquires all space of parent widget.
          //.shrink : minimum with and height automatically applies on it.
          height: 50,
          width: 500,
          child: ElevatedButton(
            onPressed: () {
              print("btn Pressed");
            },
            child: const Text(
              "Press Here",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),


        const SizedBox(
          height: 200,
        ),


        SizedBox.square(
          dimension: 200,
          child: ElevatedButton(
            onPressed: () {
              print("Pressed");
            },
            child: const Text(
              "Press Now",
              style: TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}
