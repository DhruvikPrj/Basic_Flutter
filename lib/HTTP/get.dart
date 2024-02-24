import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class GetReq extends StatefulWidget {
  const GetReq({super.key});

  @override
  State<GetReq> createState() => _GetReqState();
}

class _GetReqState extends State<GetReq> {

  var arr= [1,2,3,4,5,6];

  //Get Request :
 Future <void> getData() async {
      var response = await http.post(
        Uri.parse("https://jsonplaceholder.typicode.com/posts/1"), body: {"userId" : "101"});
          print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Request"),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: getData, child: Text("Get"))
            ],
          )
        ),
      ),
    );
  }
}
