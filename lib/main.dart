// import 'package:first_app/gradient_container.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.deepPurple,
//         body:  GradientContainer(
//            const [Colors.black,Colors.white]), // Our class constructor
//         // body: GradientContainer(Colors.white, Colors.red), // Our class constructor
//       ),
//     ),
//   );
// }


import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const  MaterialApp(
      home: Scaffold(
        body:GradientContainer( [Colors.red,Colors.black]),
      ),
    ),
  );
}
