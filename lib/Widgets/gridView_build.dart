import 'package:flutter/material.dart';

class GridViewBuild extends StatefulWidget {
  const GridViewBuild({super.key});

  @override
  State<GridViewBuild> createState() => _GridViewBuildState();
}

class _GridViewBuildState extends State<GridViewBuild> {
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

    return Container(
        height: 500,

        //It is used to display Dynamic data during runtime.
        child: GridView.builder(
          itemBuilder: (context, index) {
            return Container(
              color: arrColor[index],
            );
          },
          itemCount: arrColor.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,),
        ));
  }
}
