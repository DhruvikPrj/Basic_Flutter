import 'package:flutter/material.dart';

//Use Of Custom Widges:
//1. Increase redundancy 2. Code Readability.
class CustomWidges extends StatelessWidget {
  const CustomWidges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Profile(),
        Body(),
        Body2(),
        Body3(),
      ],
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.deepPurple,
        child: ListView.builder(
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white30,
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        color: Colors.green,
        child: ListView.builder(
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white30,
              ),
              title: Text(
                "Name",
                style: TextStyle(color: Colors.white70),
              ),
              subtitle: Text(
                "NickName",
                style: TextStyle(color: Colors.white70),
              ),
              trailing: Icon(Icons.account_circle, color: Colors.white30,),
            ),
          ),
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}

class Body2 extends StatelessWidget {
  const Body2({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class Body3 extends StatelessWidget {
  const Body3({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.purple,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(12.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white30),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
