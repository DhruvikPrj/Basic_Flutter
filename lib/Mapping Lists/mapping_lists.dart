import 'package:flutter/material.dart';

class MappingLIst extends StatefulWidget {
  const MappingLIst({super.key});

  @override
  State<MappingLIst> createState() => _MappingLIstState();
}

class _MappingLIstState extends State<MappingLIst> {
  var listNo = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: ListView(children: [
        Column(
          children: listNo
              .map(
                (value) => Container(
                  //padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(20),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange),

                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/profile${value}.png', height: 100, width: 100,),
                  ),
                ),
              ).toList(),
        ),
      ]),
    );
  }
}
