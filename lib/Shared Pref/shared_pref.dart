import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref extends StatefulWidget {
  const SharedPref({super.key});

  @override
  State<SharedPref> createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
  var inputController = TextEditingController();

  var defText = "Press Above Button";

  //Must Create
  @override
  void initState() {
    super.initState();

    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 500,
        width: 300,
        decoration: BoxDecoration(
          color: const Color.fromARGB(153, 121, 79, 4),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black, width: 1, style: BorderStyle.solid),
          boxShadow: List.filled( 10, const BoxShadow(color: Colors.black12, blurRadius: 5.0, blurStyle: BlurStyle.outer, spreadRadius: 1,offset: Offset(1, 1)), growable: true),
        ),
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  "Demo App",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w100, fontFamily: 'Protest_Strike'),
                )),
            const SizedBox(
              height: 200,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250,
                  child: TextField(
                    // textAlign: TextAlign.center,
                    controller: inputController,
                    style: const TextStyle(color: Colors.white),
                     cursorColor: Colors.white,
                    enabled: true,
                    decoration: InputDecoration(
                       prefixIcon: const Icon(Icons.account_circle_rounded),
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
                            borderSide:
                                const BorderSide(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        disabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black38, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                       elevation: MaterialStatePropertyAll(4)),
                    onPressed: () async {
                      var name = inputController.text
                          .toString(); // the value we get from txtField.

                      // shared pref is handled by async/await
                      var prefs = await SharedPreferences.getInstance();
                      prefs.setString("name", name);
                      //prefs.setString("name", inputController.text.toString());
                      
                    },
                    child: const Text(
                      "Submit",
                      style: TextStyle(color: Colors.black),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  defText,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void getValue() async {
    var prefs = await SharedPreferences.getInstance();

   var getName = prefs.getString("name");

    //defText = getName != null ? getName : "No value Saved";
     defText = getName ?? "No value Saved"; // Alternative of above line
    setState(() {
      
    });
  }
}
