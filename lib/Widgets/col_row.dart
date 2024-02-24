//Column and Row Concept
import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/iron_man.jpg',
              height: 100,
              width: 200,
            ),
            const Text("This Is below the Image", style: TextStyle(color: Colors.limeAccent),),
            ElevatedButton(
              onPressed: () {
                print("pressed");
              },
              child: const Text("Press"),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/iron_man.jpg',
              height: 100,
              width: 200,
            ),
            const Text("This Is below the Image", style: TextStyle(color: Colors.limeAccent),),
            ElevatedButton(
              onPressed: () {
                print("pressed");
              },
              child: const Text("Press"),
            ),
          ],
        ),
      ],
    );
  }
}

// child: Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   crossAxisAlignment: CrossAxisAlignment.center,
//   children: [
//   Column(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//     Image.asset('images/iron_man.jpg', height: 100, width: 200,),
//     const Text("This Is below the Image"),
//     ElevatedButton(onPressed: (){print("pressed");}, child: const Text("Press"),),
//   ],),
//   Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//     Image.asset('images/iron_man.jpg',  height: 100, width: 200,),
//     const Text("This Is below the Image"),
//     ElevatedButton(onPressed: (){print("pressed");}, child: const Text("Press"),),
//   ],),
// ],),
