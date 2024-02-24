import 'package:flutter/material.dart';

class ContAnimation extends StatefulWidget {
  const ContAnimation({super.key});

  @override
  State<ContAnimation> createState() => _ContAnimationState();
}

class _ContAnimationState extends State<ContAnimation> {

  //Default Values of Reference variables.
  var cHeight = 100.0;
  var cWidth = 200.0;

  var flag = true;

  Decoration mydecor = BoxDecoration( borderRadius: BorderRadius.circular(10),
    color: Colors.orange,);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          duration: const Duration(seconds: 2),//Speed Adjustment.
          height: cHeight,
          width: cWidth,
          curve: Curves.bounceOut, // Animation Type Adjustment
          decoration: mydecor,
        ),

        const SizedBox(height: 20,),

        ElevatedButton(
          onPressed: () {
            setState(() {
             if(flag){
               cHeight = 200.0;
               cWidth = 300.0;
               flag = false;
               mydecor = BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(50),
               );
             }
             else{
               cHeight = 100.0;
               cWidth = 200.0;
               flag = true;
               mydecor = BoxDecoration(
                 color: Colors.orange,
                 borderRadius: BorderRadius.circular(10),
               );
             }
            });
          },
          child: const Text("Animate"),
        ),
      ],
    );
  }
}
