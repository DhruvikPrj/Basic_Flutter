import 'package:flutter/material.dart';

class MyOpacity extends StatefulWidget {
  @override
  State<MyOpacity> createState() => _MyOpacityState();
}

class _MyOpacityState extends State<MyOpacity> {
  var cHeight = 100.0;
  var cWidth = 200.0;

  Color cColor = Colors.deepOrange;

  var isVisible = true;

  var cOpacity = 1.0;
  @override
  Widget build(BuildContext context) {
    // 1>= Opacity >=0
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedOpacity(
          opacity: cOpacity, duration: Duration(seconds: 2),
          curve: Curves.easeInCirc,
          child: Container(
            color: cColor,
            height: cHeight,
            width: cWidth,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            print("pressed");

            //cColor =  Colors.cyanAccent;
            setState(() {
              if (isVisible) {
                isVisible = false;
                cOpacity = 0.0;
                cHeight = 100;
                cWidth = 200.0;
                cColor = Colors.greenAccent;
                print(isVisible);
              } else {
                isVisible = true;
                cOpacity = 1.0;
                cHeight = 100;
                cWidth = 200.0;
                cColor = Colors.deepOrange;
                print(isVisible);
              }
            });
          },
          child: const Text("Change Opacity"),
        ),
      ],
    );
  }
}
