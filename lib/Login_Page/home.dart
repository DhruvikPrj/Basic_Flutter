import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _RippleAnimationState();
}

class _RippleAnimationState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _animController;

  var circleRadius = [0.0, 10.0, 20.0, 30.0, 50.0, 100.0, 150.0, 200.0, 250.0];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animController);

    print(_animController.value);

    _animController.addListener(() {
      setState(() {});
    });

    _animController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(153, 82, 57, 15),
        title: const Text(
          "Home Page",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Protest_Strike',
              fontSize: 25),
        ),
      ),
      body: Center(
        child: Container(
            color: const Color.fromARGB(153, 82, 57, 15),
            height: double.infinity,
            width: double.infinity,
            child: Stack(alignment: Alignment.center, children: [
              buildMyContainer(circleRadius[0]),
              buildMyContainer(circleRadius[1]),
              buildMyContainer(circleRadius[2]),
              buildMyContainer(circleRadius[3]),
              buildMyContainer(circleRadius[4]),
              buildMyContainer(circleRadius[5]),
              buildMyContainer(circleRadius[6]),
              buildMyContainer(circleRadius[7]),
              const Center(
                  child: Icon(
                Icons.call_outlined,
                color: Colors.white,
                size: 20,
              )),
            ])),
      ),
    );
  }

  Widget buildMyContainer(radius) {
    return Container(
      height: radius * _animController.value,
      width: radius * _animController.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.limeAccent.withOpacity(1.0 - _animController.value),
      ),
    );
  }
}
