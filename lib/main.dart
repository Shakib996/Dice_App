import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiceApp(),
    );
  }
}
class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNumber =1;
  int rightDiceNumber =6;
  void changeDiceface(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('All is Well',style: TextStyle(color: Colors.white,),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: (){},
                child: Image(
                  image: AssetImage('image/dice$leftDiceNumber.png'),
                  height: 300,
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){},
                child: Image(
                  image: AssetImage('image/dice$rightDiceNumber.png'),
                  height: 300,
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){},
                child: Image(
                  image: AssetImage('image/dice$rightDiceNumber.png'),
                  height: 300,
                ),
              ),
            ),
            FlatButton(
              color: Colors.black,
              onPressed: (){
                changeDiceface();
              },
              child: Text('Try',style: TextStyle(color: Colors.white,),),

            ),
          ],
        ),
      ),
    );
  }
}

