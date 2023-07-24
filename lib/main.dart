import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatefulWidget {
   FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var leftDiceNumber = '2';
  var RightDiceNumber = '2';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,

        title: Text('Dice App'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      Random random = new Random();
                      int randomNumber = random.nextInt(6) + 1;
                      leftDiceNumber = randomNumber.toString();



                    });


                  },
                    child: Image.asset('assets/dice$leftDiceNumber.png'))),

            SizedBox(
              width: 80,
            ),

            Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      Random random = new Random();
                      int randomNumber = random.nextInt(6) + 1;
                      RightDiceNumber = randomNumber.toString();
                    });
                  },
                    child: Image.asset('assets/dice$RightDiceNumber.png')))
          ],
        ),
      )
    );
  }
}


