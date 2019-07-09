import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/callScreen.dart';
import 'package:whatsapp_clone/screens/chatScreen.dart';
import 'package:whatsapp_clone/screens/statusScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

//SingleTickerProviderStateMixin vsync 'nin aktif olması için mixin edildi
class HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, initialIndex: 0, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          textDirection: TextDirection.ltr,
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(text: "Sohbet"),
            Tab(text: "Durum"),
            Tab(text: "Aramalar"),
          ],
        ),
        actions: <Widget>[Icon(Icons.search), Icon(Icons.more_vert)],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          ChatScreen(),
          StatusScreen(),
          CallScreen()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        onPressed: () {},
        tooltip: "Sohbet",
        child: Icon(Icons.message,
        color: Colors.white,),
      ),
    );
  }
}
