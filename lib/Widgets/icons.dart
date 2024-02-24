import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconWidgets extends StatelessWidget {
  const IconWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.add_business, size: 50,color: Colors.limeAccent,),

        //External Icons
        FaIcon(FontAwesomeIcons.addressBook, size: 50,color: Colors.limeAccent,),
      ],
    );
  }
}
// If we want to add External Icons:
// Use Awesome Icon Library(Font Awesome).