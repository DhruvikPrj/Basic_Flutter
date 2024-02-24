import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridLayout extends StatefulWidget {
  const GridLayout({super.key});

  @override
  State<GridLayout> createState() => _GridLayoutState();
}

class _GridLayoutState extends State<GridLayout> {
  @override
  Widget build(BuildContext context) {
    var arrColor = [
      Colors.amber,
      Colors.blueAccent,
      Colors.limeAccent,
      Colors.deepOrange,
      Colors.orange,
      Colors.green,
      Colors.purple,
      Colors.indigoAccent,
      Colors.black,
      Colors.amberAccent,
      Colors.deepPurpleAccent,
      Colors.greenAccent,
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 500,
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                Container(color: arrColor[0]),
                Container(color: arrColor[1]),
                Container(color: arrColor[2]),
                Container(color: arrColor[3]),
                Container(color: arrColor[4]),
                Container(color: arrColor[5]),
                Container(color: arrColor[6]),
                Container(color: arrColor[7]),
                Container(color: arrColor[8]),
                Container(color: arrColor[9]),
                Container(color: arrColor[10]),
                Container(color: arrColor[11]),
              ],
            ),
          ),

          const SizedBox(
            height: 50,
          ),

          Container(
            height: 500,
            child: GridView.extent(
              maxCrossAxisExtent: 50, // use it instead of .count
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                Container(color: arrColor[0]),
                Container(color: arrColor[1]),
                Container(color: arrColor[2]),
                Container(color: arrColor[3]),
                Container(color: arrColor[4]),
                Container(color: arrColor[5]),
                Container(color: arrColor[6]),
                Container(color: arrColor[7]),
                Container(color: arrColor[8]),
                Container(color: arrColor[9]),
                Container(color: arrColor[10]),
                Container(color: arrColor[11]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
