import 'package:flutter/material.dart';
import 'package:practice/navigate_value/navigate.dart';

class Output extends StatelessWidget {

  var referedValue="";

  Output(this.referedValue);

  @override
  Widget build(BuildContext context) {



    return Center(
      child: Text("Hello $referedValue", style: const TextStyle(
          color: Colors.blue,
          fontFamily: 'Protest_Riot',
          fontSize: 25),)
    );
  }
}
