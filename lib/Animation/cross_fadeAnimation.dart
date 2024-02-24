import 'package:flutter/material.dart';

class CrossFadeAnimation extends StatefulWidget {
  @override
  State<CrossFadeAnimation> createState() => _CrossFadeAnimationState();
}

class _CrossFadeAnimationState extends State<CrossFadeAnimation> {

  var isFirst = true;

  @override
  void initState() {
    super.initState();
    // Use When need to set Timer.
    // Timer(Duration(seconds: 4)(){
    //   runTime();
    // } );
  }

  void runTime(){
    setState(() {
      if(isFirst){
        isFirst = false;
      }
      else{
        isFirst = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedCrossFade(
            firstChild: Container(
              height: 200,
              width: 400,
              color: Colors.orange,
            ),
            secondChild: Image.asset('images/iron_man.jpg', height: 100,),
            crossFadeState:isFirst ? CrossFadeState.showFirst: CrossFadeState.showSecond,
            sizeCurve: Curves.easeOutCirc, // When two children size is Different.

            firstCurve: Curves.easeInCubic, // first child animation
            secondCurve: Curves.bounceOut, // second child Animation
            duration: Duration(seconds: 2),
        ),

        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              runTime();
            },
            child: Text("Change")),
      ],
    );
  }
}
