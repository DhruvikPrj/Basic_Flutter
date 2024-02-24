import 'package:flutter/material.dart';

class Date_Pick extends StatelessWidget {
  const Date_Pick({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () async {
            //The date value can take more time to get, so it is handled by Async.....
            DateTime? datePicked = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2024),
                lastDate: DateTime(2029));

            if (datePicked != null) {
              print('Selected date: ${datePicked.day}');
            }
          },
          child: const Text(
            "Open Date Picker",
            style: TextStyle(color: Colors.black,fontSize: 15),
          ),
        ),

        const SizedBox(height: 20,),

        ElevatedButton(
          onPressed: () async {
            TimeOfDay? pickTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.input);
                //initialEntryMode: TimePickerEntryMode.dial);

            if(pickTime!=null){
              print("Selected Time : ${pickTime.hour}");
            }
          },
          child: const Text(
            "Pick Time",
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
      ],
    );
  }
}

// class DatePick extends StatefulWidget {
//   const DatePick({super.key});
//
//   @override
//   State<_DatePickState> createState() => _DatePickState();
// }
//
// class _DatePickState extends State<DatePick> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const Text(
//           "",
//           style: TextStyle(color: Colors.white, fontSize: 25),
//         ),
//
//         ElevatedButton(
//           onPressed: () async {
//             //The date value can take more time to get value, so it is handled by Async.....
//             DateTime? datePicked = await showDatePicker(
//                 context: context,
//                 initialDate: DateTime.now(),
//                 firstDate: DateTime(2024),
//                 lastDate: DateTime(2029));
//           },
//           child: const Text(
//             "Open Date Picker",
//             style: TextStyle(color: Colors.black),
//           ),
//         ),
//       ],
//     );
//   }
// }
