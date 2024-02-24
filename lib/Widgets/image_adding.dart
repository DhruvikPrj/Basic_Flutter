import 'package:flutter/material.dart';

class Image_Adding extends StatelessWidget {
  const Image_Adding({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/iron_man.jpg',
      height: 200,
      width: double.infinity,
    );
  }
}
