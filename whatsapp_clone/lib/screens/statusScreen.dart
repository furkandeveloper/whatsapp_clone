import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat.dart';
import 'package:whatsapp_clone/models/status.dart';

class StatusScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StatusScreenState();
}

class StatusScreenState extends State<StatusScreen> {
  Status status;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: statusList.length,
      itemBuilder: (context,i)=>Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  statusList[i].avatarUrl
                ),
              ),
              title: Text(statusList[i].name),
          )
        ],
      ),
    );
  }
}
