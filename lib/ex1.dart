import 'package:flutter/material.dart';

class Ex1 extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return  _Ex1State();
  }
}

class _Ex1State extends State<StatefulWidget>{
  int counter=0;

  @override
  Widget build(BuildContext context){
    return Column();

  }
}

//Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text("$counter time button pressed", style: TextStyle(color: Colors.white, fontSize: 25, fontFamily: 'Protest_Riot'),),
//         ElevatedButton(onPressed: (){
//           counter++; // we can write this logic inside of state state.
//           setState(() {
//
//           });
//         }, child: Icon(Icons.add)),
//       ],
//     )