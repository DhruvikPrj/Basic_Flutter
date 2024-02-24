import 'package:flutter/material.dart';

class RippleAnimation extends StatefulWidget {
  const RippleAnimation({super.key});

  @override
  State<RippleAnimation> createState() => _RippleAnimationState();
}

class _RippleAnimationState extends State<RippleAnimation> with SingleTickerProviderStateMixin{

  late Animation _animation ;
  late AnimationController _animController;


  var circleRadius = [0.0, 10.0, 20.0, 30.0, 50.0, 100.0, 150.0, 200.0, 250.0];




  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animController = AnimationController(vsync: this, duration: Duration(seconds: 5));
    _animation = Tween(begin:  0.0, end:  1.0).animate(_animController);

    print(_animController.value);

    _animController.addListener(() {
      setState(() {

      });
    });

    _animController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          height: 500,
          width: 500,
          child: Stack(
            alignment: Alignment.center,
            children: [
              buildMyContainer(circleRadius[0]),
              buildMyContainer(circleRadius[1]),
              buildMyContainer(circleRadius[2]),
              buildMyContainer(circleRadius[3]),
              buildMyContainer(circleRadius[4]),
              buildMyContainer(circleRadius[5]),
              buildMyContainer(circleRadius[6]),
              buildMyContainer(circleRadius[7]),
          ])


        ),

    );
  }

Widget buildMyContainer(radius){
  return Container(
    height: radius * _animController.value,
    width:  radius * _animController.value,


    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.limeAccent.withOpacity(1.0 - _animController.value),
    ),
  );

}
}

// code Explanation :

//
// // Creating a new widget called RippleAnimation
// class RippleAnimation extends StatefulWidget {
//   const RippleAnimation({super.key});
//
//   @override
//   // Creating the state for the RippleAnimation widget
//   State<RippleAnimation> createState() => _RippleAnimationState();
// }
//
// // The state class for RippleAnimation
// class _RippleAnimationState extends State<RippleAnimation> with SingleTickerProviderStateMixin {
//
//   // Declaring animation and animation controller
//   late Animation _animation;
//   late AnimationController _animController;
//
//   // List of circle radii for our animation
//   var circleRadius = [0.0, 1.0, 2.0, 3.0, 25.0, 30.0, 35.0, 40.0, 45.0];
//
//   @override
//   void initState() {
//     super.initState();
//
//     // Initializing AnimationController with a duration of 4 seconds
//     _animController = AnimationController(vsync: this, duration: Duration(seconds: 4));
//
//     // Defining the animation using Tween (from 0.0 to 1.0)
//     _animation = Tween(begin: 0.0, end: 1.0).animate(_animController);
//
//     // Adding a listener to the animation controller to update the UI when animation values change
//     _animController.addListener(() {
//       setState(() {
//         // Empty setState as we don't need to update any specific widget state here
//       });
//     });
//
//     // Starting the animation
//     _animController.forward();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // Building the widget tree
//     return Container(
//       height: double.infinity,
//       width: double.infinity,
//       child: Stack(
//         alignment: Alignment.center,
//         children: circleRadius.map((radius) => Container(
//           height: radius * _animController.value,
//           width: radius * _animController.value,
//           // Creating circular containers with changing size and color
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: Colors.limeAccent.withOpacity(1.0 - _animController.value),
//           ),
//         )).toList(),
//       ),
//     );
//   }
// }