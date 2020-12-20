
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ChatModel.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override

  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:chats.length,
        itemBuilder: (context,i) => Column(
          children: [
            Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(chats[i].avatar),
              ),

              title: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  Text(chats[i].name,
                      style:TextStyle(fontWeight: FontWeight.bold)),
                  Text(chats[i].time,
                  style:TextStyle(fontSize: 14.0,color: Colors.grey) ,)
                ],

              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(chats[i].message,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0
                ),),
              ),
            )
          ],
        )


    );
  }
}
