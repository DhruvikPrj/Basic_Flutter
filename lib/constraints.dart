// Constraints : Set of Rules
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constraint extends StatelessWidget {
  const Constraint({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(constraints: const BoxConstraints(
      maxHeight: 200 ,
      maxWidth: 200,
      minHeight: 100,
      minWidth: 100,
    ),

    //The button cannot take more or min size than defined in Constraints.
    child: ElevatedButton(
      onPressed: (){},
      child: const Text("Click Here"),
    ));
  }
}
