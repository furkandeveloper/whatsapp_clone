import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/homeScreen.dart';

void main(){
  runApp(Home());
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}