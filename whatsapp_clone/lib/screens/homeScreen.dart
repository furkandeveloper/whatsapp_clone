import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp",textDirection: TextDirection.ltr,),
      backgroundColor: Colors.green,
      ),
      body: Container(
        child: Center(
          child: Text("Hello"),
        ),
      ),
    );
  }

}