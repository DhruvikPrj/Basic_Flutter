import 'package:flutter/material.dart';

class Scrollable_Widget extends StatelessWidget {
  const Scrollable_Widget ({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 100,
                    width: 100,
                    color: Colors.lightGreen,
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 100,
                    width: 100,
                    color: Colors.purple,
                  ),
                  Container(
                      margin: const EdgeInsets.all(5),
                      height: 100,
                      width: 100,
                      color: Colors.indigoAccent),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 100,
                    width: 100,
                    color: Colors.amber,
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            height: 200,
            width: 200,
            color: Colors.lightGreen,
          ),
          Container(
            margin: const EdgeInsets.all(5),
            height: 200,
            width: 200,
            color: Colors.purple,
          ),
          Container(
              margin: const EdgeInsets.all(5),
              height: 200,
              width: 200,
              color: Colors.indigoAccent),
          Container(
            margin: const EdgeInsets.all(5),
            height: 200,
            width: 200,
            color: Colors.amber,
          ),
          Container(
            margin: const EdgeInsets.all(5),
            height: 200,
            width: 200,
            color: Colors.green,
          ),
          Container(
            margin: const EdgeInsets.all(5),
            height: 200,
            width: 200,
            color: Colors.red,
          ),
        ],
      ),
    ),
  );
  }
}
