import 'package:flutter/material.dart';
import 'package:practice/navigate_value/output.dart';

class Navigate extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var valueNav = TextEditingController();

    return Scaffold(
        body: Center(
      child: SizedBox(
        height: 500,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
                controller: valueNav,
                ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Output(valueNav.text.toString())));
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'Protest_Riot',
                      fontSize: 25),
                ),
            )
          ],
        ),
      ),
    ));
  }
}
