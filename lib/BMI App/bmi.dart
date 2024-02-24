import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  var tfWController = TextEditingController();
  var tfHfController = TextEditingController();
  var tfHiController = TextEditingController();

  var result = '';
  var about = '';
  var img;

  var bmiTxtColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
              color: Colors.white, fontFamily: 'Protest_Strike', fontSize: 25),
        ),
        backgroundColor: const Color.fromARGB(255, 25, 20, 155),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/bmi_Image.png', width: 100),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: tfWController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.line_weight_outlined,
                        color: Color.fromARGB(255, 25, 20, 155),
                      ),
                      //hintText: "Enter Your Weight",
                      label: const Text(
                        "Enter Your Weight (In Kg)",
                        style: TextStyle(
                          color: Color.fromARGB(255, 25, 20, 155),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 25, 20, 155),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: tfHfController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.height,
                        color: Color.fromARGB(255, 25, 20, 155),
                      ),
                      //hintText: "Enter Your Weight",
                      label: const Text(
                        "Enter Your Height (In fit)",
                        style: TextStyle(
                          color: Color.fromARGB(255, 25, 20, 155),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 25, 20, 155),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: tfHiController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.height,
                      color: Color.fromARGB(255, 25, 20, 155),
                    ),
                    //hintText: "Enter Your Weight",
                    label: const Text(
                      "Enter Your Height (In inch)",
                      style: TextStyle(
                        color: Color.fromARGB(255, 25, 20, 155),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 25, 20, 155),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    var wVal = tfWController.text.toString();
                    var hfVal = tfHfController.text.toString();
                    var hiVal = tfHiController.text.toString();

                    if (wVal != "" && hfVal != "" && hiVal != "") {
                      //BMI Calculation
                      var tw = int.parse(wVal);
                      var tHf = int.parse(hfVal);
                      var tHi = int.parse(hiVal);

                      var hInch = (tHf * 12) + tHi;

                      var hCenti = hInch * 2.54;

                      var hMeter = hCenti / 100;

                      var bmi = tw / (hMeter * hMeter);

                      if (bmi < 18) {
                        about = "You are UnderWeight";
                        bmiTxtColor = Colors.blue;
                        img = Image.asset('images/underweight.png', width: 200);
                      } else if (bmi > 25) {
                        about = "You are Overweight";
                        bmiTxtColor = Colors.red.shade900;
                        img = Image.asset('images/overweight.png', width: 200);
                      } else {
                        about = "You are Healthy";
                        bmiTxtColor = Colors.green;
                        img = Image.asset('images/healthy.png', width: 200);
                      }

                      setState(() {
                        result = 'Your BMI is: ${bmi.toStringAsFixed(2)}';
                      });
                    } else {
                      setState(() {
                        about = "Please Fill All Blanks";
                        result = '';
                        img = Container();
                        bmiTxtColor = Colors.red;
                        print(result);
                      });
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 20, 15, 150)),
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(result,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 20, 15, 150),
                        fontSize: 20,
                        fontWeight: FontWeight.w900)),
                Text(
                  about,
                  style: TextStyle(
                      color: bmiTxtColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: img,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
