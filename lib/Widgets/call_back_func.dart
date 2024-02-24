import 'package:flutter/material.dart';

class CallBack extends StatelessWidget {
  const CallBack({super.key});

  void callBack(){
    print("Call Back function called");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: callBack, //This is Implementation
        child: Text("Press"),
      ),
    );
  }
}
