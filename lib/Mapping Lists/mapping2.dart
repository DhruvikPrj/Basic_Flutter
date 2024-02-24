import 'package:flutter/material.dart';

class UserMapping extends StatefulWidget {
  const UserMapping({super.key});

  @override
  State<UserMapping> createState() => _UserMappingState();
}

class _UserMappingState extends State<UserMapping> {

  var userData = [
    {
      'userName' : 'Raj',
      'mobileNo' : 7622827236,
      'adress' : 'Vavdi',
    },
    {
      'userName' : 'Abhay',
      'mobileNo' : 9054090550,
      'adress' : 'Mahemadpur',
    },
    {
      'userName' : 'Dhruvik',
      'mobileNo' : 9173333896,
      'adress' : 'Patan',
    },
    {
      'userName' : 'Bhavik',
      'mobileNo' : 7622827236,
      'adress' : 'Khokharwado',
    },
    {
      'userName' : 'Deep',
      'mobileNo' : 7041176001,
      'adress' : 'Gurjarwado',
    },
    {
      'userName' : 'Aman',
      'mobileNo' : 7096359293,
      'adress' : 'Golapur',
    },
    {
      'userName' : 'Rajkumar',
      'mobileNo' : 8320680879,
      'adress' : 'Hansapur',
    },
    {
      'userName' : 'Dhaval',
      'mobileNo' : 6352329608,
      'adress' : 'Subhash Chowk',
    },

  ];

  var listNo = [1, 2, 3, 4, 5, 6, 7, 8,];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: userData.map((value) => Container(
        margin: EdgeInsets.all(15),
          height: 100,
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            leading: Icon(Icons.account_circle_sharp),
            title: Text(value['userName'].toString(), style: TextStyle(color: Colors.white),),
            subtitle: Text(value['mobileNo'].toString(),  style: TextStyle(color: Colors.white),),
            trailing: Text(value['adress'].toString(), style: TextStyle(color:  Colors.white, fontSize: 20),)
          ),
        )).toList(),
      ),

    );
  }
}
