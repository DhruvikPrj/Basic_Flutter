import 'package:flutter/material.dart';

class Ink_Well extends StatelessWidget {
  const Ink_Well({super.key});

// if we want to make other widgets clickable & perform some tasks, then we use this
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Tapped on container");
      },
      child: Container(
        height: 200,
        width: 200,
        color: Colors.deepOrange,
        child: Center(
          child:
              InkWell // if we want to make other widgets clickable & perform some tasks, then we use this
                  (
            onTap: () {
              print("Tapped on text");
            },
            child: const Text(
              "Click Here",
              style: TextStyle(color: Colors.cyanAccent, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
