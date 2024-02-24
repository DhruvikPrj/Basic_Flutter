import 'package:flutter/material.dart';

class CrclAvtar extends StatelessWidget {
  const CrclAvtar({super.key});

  @override
  Widget build(BuildContext context) {
    //Use Of CircleAvatar:-
    return CircleAvatar(
      backgroundColor: Colors.green,
      //backgroundImage: AssetImage('images/profile2.png'),
      //backgroundImage: NetworkImage('https://miro.medium.com/v2/resize:fit:1000/1*ls4C41AHE1II4ul2HeUFyw.jpeg'),

      maxRadius: 60,

      child: Container(
        height: 70,
        width: 70,
        child: Column(
          children: [
            Container(
              child: Image.asset(
                'images/profile5.png',
                height: 40,
                width: 40,
              ),
            ),
            const Text(
              "D Caprio",
              style: TextStyle(color: Colors.limeAccent),
            ),
          ],
        ),
      ),
    );
  }
}
