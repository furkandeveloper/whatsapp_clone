import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/call.dart';

class CallScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CallScreenState();
}

class CallScreenState extends State<CallScreen> {
  Call call;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callList.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                callList[i].avatarUrl
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(callList[i].name),
                Text(callList[i].time),
                Icon(Icons.call)
              ],
            )
          )
        ],
      ),
    );
  }
}
