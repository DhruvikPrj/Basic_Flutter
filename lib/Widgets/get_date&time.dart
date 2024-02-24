import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; //extra dependancy library

class CurrDateTime extends StatefulWidget {
  const CurrDateTime({Key? key}) : super(key: key);

  @override
  _CurrDateTimeState createState() => _CurrDateTimeState();
}

class _CurrDateTimeState extends State<CurrDateTime> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            //we can use different formats here:-
            "Current Time is : ${DateFormat('Hms').format(time)}",
            //if want a specific format in date , add lint dependancy in pubspec.yaml file.

            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
          ),
          Text(
            "Today is : ${DateFormat('jms').format(time)}",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
          ),
          Text(
            "Current date is : ${time.day}",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
          ),
          Text(
            "Current date is : ${time.weekday}",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                // it Everytime Builds a new State and returns Dynamic data.
              });
            },
            child: const Text(
              "Get Current Time",
              style: TextStyle(color: Colors.deepOrange),
            ),
          ),
        ],
      ),
    );
  }
}


