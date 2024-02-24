import 'package:flutter/material.dart';

class Crud extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CrudState();
  }
}

class _CrudState extends State<StatefulWidget> {
  var input1 = TextEditingController();
  var input2 = TextEditingController();

  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 79, 115, 98),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Arithmetic Operations",
                style: TextStyle(
                    color: Colors.amberAccent,
                    fontFamily: 'Protest_Riot',
                    fontSize: 25),
              ),
              const SizedBox(
                height: 50,
              ),
              TextField(
                  controller: input1,
                  //enabled: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Enter First value:",
                    hintStyle: const TextStyle(color: Colors.white30),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.white),
                    ),

                    //Unfocus
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                  )),
              const SizedBox(
                height: 50,
              ),
              TextField(
                controller: input2,
                //enabled: true,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Enter Second value:",
                  hintStyle: const TextStyle(color: Colors.white30),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white),
                  ),

                  //Unfocus
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.greenAccent)),
                          onPressed: () {
                            var no1 = int.parse(input1.text.toString());
                            var no2 = int.parse(input2.text.toString());

                            var sum = no1 + no2;

                            result = "The sum is : $sum";
                            setState(() {
                              print(sum);
                            });
                          },
                          child: const Text(
                            "Add",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Protest_Riot',
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.greenAccent)),
                          onPressed: () {
                            var no1 = int.parse(input1.text.toString());
                            var no2 = int.parse(input2.text.toString());

                            var sub = no1 - no2;

                            result = "The Subtraction is : $sub";
                            setState(() {
                              print(sub);
                            });
                          },
                          child: const Text(
                            "Minus",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Protest_Riot',
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.greenAccent)),
                          onPressed: () {
                            var no1 = int.parse(input1.text.toString());
                            var no2 = int.parse(input2.text.toString());

                            var mul = no1 * no2;

                            result = "The Multiplication is : $mul";
                            setState(() {
                              print(mul);
                            });
                          },
                          child: const Text(
                            "Multiply",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Protest_Riot',
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.greenAccent)),
                          onPressed: () {
                            var no1 = int.parse(input1.text.toString());
                            var no2 = int.parse(input2.text.toString());

                            var div = no1 / no2;

                            result = "The Dividation is : ${div.toStringAsFixed(2)}";
                            setState(() {
                              print(div);
                            });
                          },
                          child: const Text(
                            "Divide",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Protest_Riot',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    result,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Protest_Riot',
                        fontSize: 15),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
