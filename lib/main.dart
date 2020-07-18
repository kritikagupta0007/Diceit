import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  home: _DicePlay(),
));

class _DicePlay extends StatefulWidget {
  @override
  __DicePlayState createState() => __DicePlayState();
}

class __DicePlayState extends State<_DicePlay> {
 int leftDice = 3;
 int rightDice = 1;
 
void changeLeftDiceNumber(){
  setState(() {
    leftDice = Random().nextInt(6) + 1; // for 6 its range is from 0-5 , for 6 + 1 its range become 1-6
  });
}

void changeRightDiceNumber(){
  setState(() {
    rightDice = Random().nextInt(6) + 1;
  });
}


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff64B5F6),
        appBar: AppBar(
          elevation: 50,
          toolbarHeight: 100.0,
          backgroundColor: Color(0xff1565C0),
          title: Text('Dice It',
           style: TextStyle(
             fontSize: 40.0,
             fontWeight: FontWeight.bold,
             letterSpacing: 1.5,
          ),),
          centerTitle: true,
        ),
        body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(35.0),
                child: FlatButton(
                  onPressed: (){
                    changeLeftDiceNumber();
                    },
                  child: Image.asset('images/dice$leftDice.png'),
                  ),
              ),
            ),
            Expanded(
               child: Padding(
                 padding: EdgeInsets.all(35.0),
                child: FlatButton(
                  onPressed: (){
                    changeRightDiceNumber();
                  }, 
                  child: Image.asset('images/dice$rightDice.png')),
               ),
            )
          ],)
        ),
      ),
    );
  }
}
