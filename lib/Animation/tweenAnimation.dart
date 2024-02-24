import 'package:flutter/material.dart';

class TweenAnim extends StatefulWidget {
  const TweenAnim({super.key});

  @override
  State<TweenAnim> createState() => _TweenAnimState();
}

class _TweenAnimState extends State<TweenAnim> with SingleTickerProviderStateMixin{

  late Animation animation;
  late Animation colorAnimation;
  late Animation sizeAnimation;

  late AnimationController animcontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animcontroller = AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation = Tween(begin: 5.0, end: 200.0).animate(animcontroller);
    colorAnimation = ColorTween(begin: Colors.limeAccent, end: Colors.cyan).animate(animcontroller);

    animcontroller.addListener(() { 
      print(animation.value);
      setState(() {

      });
    });

  //To Start Animation
    animcontroller.forward();

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: colorAnimation.value,
        height: animation.value,
        width: animation.value,
      ),
    );
  }
}
