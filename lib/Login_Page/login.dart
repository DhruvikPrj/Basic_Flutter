import 'package:flutter/material.dart';
import 'package:practice/Login_Page/home.dart';
import 'package:practice/Login_Page/loginSplash.dart';
import 'package:practice/Shared%20Pref/shared_pref.dart';
import 'package:practice/Widgets/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const String KEYLOGIN = "Login";

  var nameController = TextEditingController();
  var passController = TextEditingController();

  var isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(153, 82, 57, 15),
          title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Login Page",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Protest_Strike',
                  fontSize: 25),
            ),
          ),
        ),
        body: Material(
            child: Container(
              height: MediaQuery.of(context).size.height,
                alignment: Alignment.center,
                color: const Color.fromARGB(153, 82, 57, 15),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextField(
                            // textAlign: TextAlign.center,
                            controller: nameController,
                            style: const TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            enabled: true,
                            decoration: InputDecoration(
                                prefixIcon:
                                    const Icon(Icons.account_circle_rounded),
                                prefixIconColor: Colors.white,
                                label: const Text(
                                  "Enter Your Name",
                                  style: TextStyle(color: Colors.white),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(width: 1)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.black, width: 1),
                                    borderRadius: BorderRadius.circular(10)),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black38, width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            //password visibility
                            obscureText: true,
                            obscuringCharacter: "*",
                            // textAlign: TextAlign.center,
                            controller: passController,
                            style: const TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            enabled: true,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.password),
                                prefixIconColor: Colors.white,
                                label: const Text(
                                  "Enter Your Password",
                                  style: TextStyle(color: Colors.white),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(width: 1)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.black, width: 1),
                                    borderRadius: BorderRadius.circular(10)),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black38, width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              style: const ButtonStyle(
                                  elevation: MaterialStatePropertyAll(4)),
                              onPressed: () async {
                                var sharedPref =
                                    await SharedPreferences.getInstance();
                              
                                sharedPref.setBool(
                                    LoginSplashState.KEYLOGIN, true);
                              
                                // if LoggenIn Succesfully
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomePage(),
                                    ));
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(color: Colors.black),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            ' Hello Hem',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Protest_Riot'),
                          ),
                        ]),
                  ),
                ))));
  }
}
