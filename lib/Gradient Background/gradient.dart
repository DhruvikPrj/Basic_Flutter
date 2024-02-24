import 'package:flutter/material.dart';

 class MyGradient extends StatelessWidget {
   const MyGradient({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Container(
       height: double.infinity,
       width: double.infinity,
       decoration: const BoxDecoration(

         gradient: LinearGradient(colors: [
           Color(0xff000000), Color(0Xff434343),
         ], begin: Alignment.topLeft, end: Alignment.bottomRight)

         // gradient: LinearGradient(colors: [Color.fromARGB(255, 7, 3, 93),
         // Color.fromARGB(255, 134, 12, 16)])

         //RadialGradient
         // gradient: RadialGradient(colors: [Color.fromARGB(255, 9, 6, 112),
         //  Color.fromARGB(205, 209, 250, 25)])
         
         //SweepGradient
         // gradient: SweepGradient(colors: [Color.fromARGB(131  ,58  ,80  ,100),
         //  Color.fromARGB(253 , 29, 29, 100),
         // Color.fromARGB(252, 176, 69, 100)])
       ),
     );
   }
 }
 