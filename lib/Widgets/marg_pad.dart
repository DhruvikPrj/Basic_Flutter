import 'package:flutter/material.dart';

class MarginPadding extends StatelessWidget {
  const MarginPadding({super.key});

  @override
  Widget build(BuildContext context) {
    //Understanding of Margin and Padding.
    return  Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: 200,
          width: 200,
          color: Colors.amber,
        ),
        Container(padding: EdgeInsets.only(top: 50, bottom: 10, left: 25),
          height: 200,
          width: 200,
          color: Colors.deepOrange,
          child: Container(
            margin: EdgeInsets.only(right: 25),
            height: 100,
            width: 100,
            color: Colors.green,
            child: const Padding(
              padding:  EdgeInsets.only(left: 10.0),
              child:  Text('Example', style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
        ),
      ],
    );
  }
}
