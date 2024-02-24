import 'package:flutter/material.dart';

class MyRangeSlider extends StatefulWidget{
  @override
  State<MyRangeSlider> createState() => _MyRangeSliderState();
}

class _MyRangeSliderState extends State<MyRangeSlider>{
  @override

  RangeValues values = RangeValues(0, 100);

  Widget build(BuildContext context){

    RangeLabels lables = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      body: Center(
        child: RangeSlider(
          values: values,
            labels: lables,
           divisions: 20, //How many divisions you want to maintain?
           max: 100, // By default this value is set 1 so need tyo change.
           min: 0,  // By default this value is set 0  so need tyo change.

            activeColor: Colors.purple, // back
            inactiveColor: Colors.purple[100], //Front


           onChanged: (newValue){
              values = newValue;
              setState(() {
                print("${newValue.start} and ${newValue.end}");
              });
           }
        ),
      ),
    );
  }
}

