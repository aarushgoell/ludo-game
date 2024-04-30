import 'package:flutter/material.dart';
import 'dart:math';
// class DiceRoller extends StatefulWidget: This line defines a Dart class named DiceRoller that extends StatefulWidget. StatefulWidget is a widget in Flutter that has mutable state. This means that the widget can change its appearance in response to events or user actions.

// @override: This annotation indicates that the following method is intended to override a method of its superclass. In this case, it's overriding the createState method from the StatefulWidget class.

// State<DiceRoller>: This specifies the type of state object that the createState method will return. State is a generic class that requires a type argument. In this case, it specifies that the state object will be associated with the DiceRoller widget.

// createState() {...}: This method is responsible for creating the state object associated with the DiceRoller widget. The return type of this method is a subclass of State<DiceRoller>, which is responsible for managing the mutable state of the DiceRoller widget.

final randomizer = Random();

class DiceRoller extends StatefulWidget{

  const DiceRoller({super.key});


  @override
  State<DiceRoller> createState(){

    return _DiceRollerState();
  }

}
// This state class will only be used in this file _ this underscore means this state class will be private even if we import this file into another file that other file will not be able to access the state class here And the reasson for that this state class is meant to be used by this DiceRollerwidget  class internally


class _DiceRollerState extends State<DiceRoller> {

  var currentDiceRoll = 2;

  void rolledDice() {
    setState((){
     currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    
    return Column(
            mainAxisSize: MainAxisSize.min, 
            children: [
            Image.asset(
            'assets/dice_images/dice-$currentDiceRoll.png',
              width: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: rolledDice,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.only(top: 10),
                    textStyle: const TextStyle(fontSize: 20)),
                child: const Text('Hi Aarush Do u wanna Ludo'))
          ],
          );
  }

// Statefull wdigets in the end are splitted across two classes as they are managed in special way internally by fluuter
}