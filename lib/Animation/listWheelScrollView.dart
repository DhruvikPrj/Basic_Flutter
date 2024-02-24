import 'package:flutter/material.dart';

class ListWheelScrollViewWidget extends StatefulWidget{
  @override
  State<ListWheelScrollViewWidget> createState() => _ListWheelScrollViewWidgetState();
}

class _ListWheelScrollViewWidgetState extends State<ListWheelScrollViewWidget>{

  var listArr = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];

  @override
  Widget build(BuildContext context){
    return Center(
      child: ListWheelScrollView(itemExtent: 200,
         offAxisFraction: 1.0, //--> For Side Change
          children: listArr.map((value) => Container(
            height: 3.0, width: 200,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(15),
              ),
            child: Center(child: Image.asset("images/profile$value.png",)),
          ),
          ).toList(),
    )
    );
  }
}