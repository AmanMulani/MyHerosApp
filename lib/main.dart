import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Center(
           child: Text('MyHeroooos',
           style: TextStyle(
             color: Colors.white,
           ),
           ),
          ),
        ),
        body: DiceeApp()
      ),
    );
  }
}
 class DiceeApp extends StatefulWidget {
   @override
   _DiceeAppState createState() => _DiceeAppState();
 }

 class _DiceeAppState extends State<DiceeApp> {
  int leftImageNumber, rightImageNumber;
  @override
   Widget build(BuildContext context) {
     return Center(
       child: Row(
         children: <Widget>[
           Expanded(
             child: FlatButton(
                 onPressed: (){
                   setState(() {
                      generateImageNumber();
                   });
                 },
                 child: Image.asset('images/image$leftImageNumber.png'),
             ),
           ),
           Expanded(
             child: FlatButton(
               onPressed: () {
                 setState(() {
                   generateImageNumber();
                 });
               },
               child: Image.asset('images/image$rightImageNumber.png'),
             ),
           ),
         ],
       ),
     );
   }
   void generateImageNumber(){
     rightImageNumber = Random().nextInt(10) + 1;
     leftImageNumber = Random().nextInt(10) + 1;
   }
 }
