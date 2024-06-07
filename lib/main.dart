import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Dicee'),),
      body:DicePage(), 
    ),
  ));
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left =1;
  int right=2 ;
  void changeface(){
    setState(() {
      left = Random().nextInt(6)+1;
      right = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
           children: [
             Expanded(flex:1, child: TextButton(
               style:   TextButton.styleFrom(backgroundColor: Colors.blueAccent ),
               onPressed: (){
                 changeface();
               }, child: Image.asset('images/dice$left.png'),
             ),
             ),
             Expanded(flex:1, child: TextButton(
               style:   TextButton.styleFrom(backgroundColor: Colors.blueAccent ),
               onPressed: (){
                  changeface();
               }, child: Image.asset('images/dice$right.png'),
             ),
             ),
           ],
        ),
      ),
    );
  }
}
