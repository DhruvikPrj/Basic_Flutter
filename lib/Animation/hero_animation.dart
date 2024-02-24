import 'package:flutter/material.dart';
import 'package:practice/Animation/hero2.dart';

class HeroAnimationWidget extends StatefulWidget {
  @override
  State<HeroAnimationWidget> createState() => _HeroAnimationWidgetState();
}

// On which two widgets, we want to add Hero Transition, they must have same widget in Hero widget. and in different pages.

class _HeroAnimationWidgetState extends State<HeroAnimationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Hero2(),));
              },
              child: Hero(
                tag: "Background",
                child: Image.asset(
                  'images/iron_man.jpg',
                  height: 100,
                ),
              ),
          ),
        ),
      ),
    );
  }
}
