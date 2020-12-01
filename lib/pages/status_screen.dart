import 'package:WhatsAppUI/models/chat_model.dart';
import 'package:WhatsAppUI/reuseable/wcards.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Wcards(
            "My Status",
            "https://i.pinimg.com/236x/4c/f6/70/4cf6700dd100334c0b4b857ce77fc5d9.jpg",
            "Tap to add status"),
        Divider(),
        Heading("Recent Updates"),
        Wcards(
            messageData[2].name, messageData[2].imageUrl, messageData[2].time),
            Wcards(
            messageData[5].name, messageData[5].imageUrl, messageData[5].time),
        Divider(),
        Heading("Today"),
        Wcards(
            messageData[2].name, messageData[2].imageUrl, messageData[2].time),
            Wcards(
            messageData[5].name, messageData[5].imageUrl, messageData[5].time)
      ],
    );
  }
}

class Heading extends StatelessWidget {
  final String heading;

  Heading(this.heading);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 5.0, top: 5.0),
        child: Text(
          heading,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
