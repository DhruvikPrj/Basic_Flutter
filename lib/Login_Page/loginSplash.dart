import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice/Login_Page/home.dart';
import 'package:practice/Login_Page/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginSplash extends StatefulWidget {
  const LoginSplash({super.key});

  @override
  State<LoginSplash> createState() => LoginSplashState();
}

class LoginSplashState extends State<LoginSplash> {

  var isLoggedIn = false;

 static const String KEYLOGIN = "Login";

  @override
  //very useful in splash screen
  void initState() {
    super.initState();

    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(153, 82, 57, 15),
        height: double.infinity,
        width: double.infinity,
        child: const Center(
          child: Text(
            "Splash Screen",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Protest_Riot',
              fontSize: 35,
            ),
          ),
        ),
      ),
    );
  }

  void whereToGo() async{

    var sharedPref = await SharedPreferences.getInstance();

    var isLoggedIn = sharedPref.getBool(KEYLOGIN);


    Timer(Duration(seconds: 5), () {


      // Rendering one Screen to Another.
      if(isLoggedIn!= null){
              if(isLoggedIn){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
              }
              else{
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
              }
      }else{
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ));
      }

    });
  }
}
