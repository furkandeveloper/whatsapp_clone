import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  Chat chat;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatList.length,
      itemBuilder: (context, i) => Column(
            children: <Widget>[
              // aralarına boşluk bırakır
              Divider(
                height: 10.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(chatList[i].avatarUrl),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      chatList[i].name,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      chatList[i].time,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    chatList[i].message,
                    textDirection: TextDirection.ltr,
                  ),
                ),
              )
            ],
          ),
    );
  }
}
