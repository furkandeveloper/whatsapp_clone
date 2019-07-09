import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/homeScreen.dart';

void main(){
  runApp(Home());
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // wp renk kodları
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366)
      ),
      home: HomeScreen(),
    );
  }
}