import 'package:flutter/material.dart';


class ListView_Separated extends StatelessWidget {
  const ListView_Separated({super.key});

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

    return ListView.separated(
      itemBuilder: (context, index) {
        return Text(
          arrName[index],
          style: const TextStyle(
              color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
        );
      },
      itemCount: arrName.length,
      separatorBuilder: (context, index) {
        return const Divider(
          height: 100,
          thickness: 5,
        );
      },
    );
  }
}
