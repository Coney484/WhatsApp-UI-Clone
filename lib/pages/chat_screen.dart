import 'package:WhatsAppUI/models/chat_model.dart';
import 'package:WhatsAppUI/pages/chat_details.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context, index) => Column(
        children: [
          Divider(
            height: 20.0,
          ),
          ListTile(
            leading: CircleAvatar(
              maxRadius: 30,
              backgroundImage: NetworkImage(messageData[index].imageUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  messageData[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  messageData[index].time,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                messageData[index].message,
                style: TextStyle(color: Colors.grey, fontSize: 18.0),
              ),
            ),
            onTap: () {
              var route = MaterialPageRoute(
                builder: (BuildContext context) => ChatDetails(
                  name: messageData[index].name,
                  profileImage: messageData[index].imageUrl,
                ),
              );
              Navigator.of(context).push(route);
            },
          )
        ],
      ),
    );
  }
}
