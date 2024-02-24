import 'package:flutter/material.dart';

class ListTaile extends StatelessWidget {
  const ListTaile({super.key});

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
        return ListTile(
          leading: Image.asset(
            'images/iron_man.jpg',
            height: 50,
            width: 100,
          ),
          title: Text(
            arrName[index],
            style: const TextStyle(color: Colors.limeAccent),
          ),
          subtitle: const Text(
            "Student",
            style: TextStyle(color: Colors.limeAccent),
          ),
          trailing: const Icon(
            Icons.add,
            color: Colors.limeAccent,
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          height: 20,
          thickness: 5,
        );
      },
      itemCount: arrName.length,
    );
  }
}
