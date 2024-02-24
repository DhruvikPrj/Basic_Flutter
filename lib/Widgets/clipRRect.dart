import 'package:flutter/material.dart';

class ClipRRectWidget extends StatelessWidget {
  const ClipRRectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // It is used to Fix the Shape and Size of Widgets.
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        child: Image.asset(
          'images/iron_man.jpg',
          width: 300,
        ),
      ),
    );
  }
}
