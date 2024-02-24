import 'package:flutter/material.dart';

class StateFulWidget extends StatefulWidget {
  const StateFulWidget({super.key});

  @override
  State<StateFulWidget> createState() => _StateFulWidgetState();
}

class _StateFulWidgetState extends State<StateFulWidget> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState(){
      super.initState();
      print("State Created");
  }

  @override
  void dispose(){
    super.dispose();
    print("State Destroyed");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Button Pressed $_counter times",
          style: const TextStyle(
            color: Colors.amberAccent,
            fontSize: 50,
          ),
        ),
        FloatingActionButton(

          onPressed: _incrementCounter,
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
