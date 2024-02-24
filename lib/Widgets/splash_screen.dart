import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice/Widgets/text-input.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  //very useful in splash screen
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      // Rendering one Screen to Another.
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Text_Input(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: const Center(
          child: Text(
            "Amazon Prime",
            style: TextStyle(
              color: Colors.blue,
              fontFamily: 'Protest_Riot',
              fontSize: 35,
            ),
          ),
        ),
      ),
    );
  }
}
