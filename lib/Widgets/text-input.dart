import 'package:flutter/material.dart';
import 'package:practice/Custom_Widges/custome_widges.dart';

class Text_Input extends StatelessWidget {
  const Text_Input({super.key});


  @override
  Widget build(BuildContext context) {

    var emailText = TextEditingController();
    var passText = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Login Page", style: TextStyle(color: Colors.white,fontSize: 30, fontFamily: 'Protest_Riot' ),),
        
                const SizedBox(height: 70,),
        
                TextField(
                  //enabled: false, //When we want to disable Text Field
        
                  //Get User values:
                  controller: emailText,
        
                  //Change Input keyboard Type:
                  keyboardType: TextInputType.emailAddress,
        
                  decoration: InputDecoration(
        
                    //Hint text
                    hintText: "Enter Your Email Here...",
                    hintStyle: TextStyle(color: Colors.white30),
        
                    // When user Focused:-
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
        
                    //When user UnFocused :-
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black38),
                    ),
        
                    //When TextField disabled , default settings :
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
        
                    //HintText
                    //suffixText: "UserName Exists",
        
        
                    //Change IconButton color:
                    //suffixIconColor: Colors.white,
        
                    //Prefix Text:
                    //prefixText: "Enter Your Username",
                    //prefixStyle: const TextStyle(color: Colors.white30),
        
                    //Prefix Icons
                    prefixIcon: const Icon(Icons.email,color: Colors.white,),
        
        
        
                    //Don't need // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: const BorderSide(color: Colors.white),
                    // ),
        
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
        
        
                TextField(
        
                  //controll the input text
                  controller: passText,
        
                  //Change Keyboard
                  keyboardType: TextInputType.visiblePassword,
        
                  //convert password text into dots(.....).
                  //obscureText: true,
        
                  //Instead of ... is use Other Signs:
                  obscuringCharacter: '*',
        
                  decoration: InputDecoration(
        
                    //Hint Text:
                    hintText: "Enter Password Here...",
                    hintStyle: const TextStyle(color: Colors.white30),
        
                    // When user Focused:-
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
        
                    //When user UnFocused :-
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black38,
                        width: 1,
                      ),
                    ),
        
                    //Don't Need
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
        
                    //icons with Button Functionality(click)
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.remove_red_eye),
                      onPressed: (){ print("Icon Pressed"); },
                      color: Colors.white,
                    ),
        
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
        
        
                // TextField(
                //   // When user Focused:-
                //   decoration: InputDecoration(
                //     focusedBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(30),
                //       borderSide: const BorderSide(
                //         color: Colors.limeAccent,
                //         width: 1,
                //       ),
                //     ),
                //
                //     // When user UnFocused:-
                //     enabledBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10),
                //       borderSide: const BorderSide(
                //         color: Colors.white54,
                //         width: 1,
                //       ),
                //     ),
                //
                //     //Don't Need
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10),
                //       borderSide: const BorderSide(
                //         color: Colors.white,
                //         width: 1,
                //       ),
                //     ),
                //   ),
                // ),
        
                const SizedBox(height: 10,),
                ElevatedButton(onPressed: (){
        
                  //It is followed by FIFO logic.
                  //Navigate from one screen to another...
                  //Navigator.push(context,MaterialPageRoute(builder: (context) => CustomWidges()) );
        
                  // //value get and fetch
                  String uEmail = emailText.toString();
                  String uPass = passText.toString();
        
                  print('Email: $uEmail, Password: $uPass');
        
                }, child: const Text("submit",
                  style: TextStyle(color: Colors.blueAccent),),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
