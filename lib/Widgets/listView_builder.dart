import 'package:flutter/material.dart';

class ListView_Builder extends StatelessWidget {
  const ListView_Builder({super.key});

  @override
  Widget build(BuildContext context) {

    var arrName = [
      "jaydeep",
      "Dhruvik",
      "Hem",
      "Arth",
      "Darshan",
      "Raj",
      "Abhay"
    ];

    // ==> ListView.builder :-
    return ListView.builder(
              itemBuilder: (context, index) {
                return Text(
                  arrName[index],
                  style: const TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                );
              },
          itemCount: arrName.length,
          // reverse: true,
          //  scrollDirection: Axis.horizontal,
        );
  }
}
