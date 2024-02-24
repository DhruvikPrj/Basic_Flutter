import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
          flex: 2,
          child: Column( //Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  height: 50,
                  //width: 50,
                  color:  Colors.red,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 50,
                  //width: 50,
                  color:  Colors.cyanAccent,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  height: 50,
                 //width: 50,
                  color:  Colors.amber,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 50,
                  //width: 50,
                  color:  Colors.lightGreen,
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  //width: 50,
                  color:  Colors.limeAccent,
                ),
              ),
            ],
          ),
        );
  }
}
