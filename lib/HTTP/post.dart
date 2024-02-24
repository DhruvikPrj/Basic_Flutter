import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class PostReq extends StatelessWidget {
  const PostReq({super.key});


  // Post Request :
  postData() async {
    try {
      var response = await http.post(
          Uri.parse('https://jsonplaceholder.typicode.com/posts'),
          body: { "id": 12.toString(), "name": "Dhruvik"});

      print(response.body);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Request"),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: postData,
                  child: const Text(
                    "Post", style: TextStyle(fontSize: 20, color: Colors.black),))
            ],
          ),
        ),
      ),
    );
  }
}
