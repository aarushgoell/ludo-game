// import 'package:flutter/material.dart';

// class StyledText extends StatelessWidget{

// const StyledText(this.text,{super.key});
// final String text;
//  @override
//   Widget build(context){
//     return  Text(
//               text,
//               style: const TextStyle(fontSize: 15, color: Colors.white),
//             );
//   }


// }


import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{

  
  const StyledText(this.txt,{super.key});

  final String txt;

  @override
  Widget build(context){
    return  Text(
              txt,
              style: const TextStyle(fontSize: 15, color: Colors.white),
            );
  }
}