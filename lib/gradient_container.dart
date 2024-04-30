// import 'package:flutter/material.dart';

// const startAlignment = Alignment.topLeft;
// const endAlignment = Alignment.bottomRight;

// class GradientContainer extends StatefuWidget {
// // GradientContainer({key}): super(key: key) ;
//   GradientContainer(this.color, {super.key});
//   final List<Color> color;

//   var activeDiceImage =  'assets/dice_images/dice-2.png';

//   void rollDice() {
//     activeDiceImage =  'assets/dice_images/dice-4.png';
//     print("HELLO");
//   }

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: color,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Image.asset(
//               activeDiceImage,
//               width: 300,
//             ),
//             const SizedBox(height: 30,),
//             TextButton(
//               onPressed: rollDice,
//               style: TextButton.styleFrom(
//                   foregroundColor: Colors.black,
//                   textStyle: const TextStyle(fontSize: 18),
//                   // padding: const EdgeInsets.only(top: 10,) // There is an alternative to padding
//                   // Which is Sizedbox which is making a fixed size box between the widgets
//                   ),
//               child: const Text('Roll Dice'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// // var startAlignment = Alignment.topLeft;
// // var endAlignment = Alignment.bottomRight;

// // const startAlignment = Alignment.topLeft;
// // const endAlignment = Alignment.bottomRight;

// // class GradientContainer extends StatelessWidget {
// // // GradientContainer({key}): super(key: key) ;
// // const GradientContainer(this.color1, this.color2, {super.key});
// // final Color color1;
// // final Color color2;

// // @override
// //  Widget build(context){
// //     return Container(
// //           decoration:  BoxDecoration(
// //             gradient: LinearGradient(
// //               colors: [color1,color2],
// //               begin: startAlignment,
// //               end: endAlignment,
// //             ),
// //           ),
// //           child: const Center(
// //             child: StyledText('Hello Aarush'),
// //           ),
// //         );
// //   }

// // }

import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
   const GradientContainer(this.color, {super.key});

  final List<Color> color;


  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: color,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: const Center(
          child: DiceRoller(),
        ));
  }
}
