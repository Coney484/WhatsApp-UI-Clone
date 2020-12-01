import 'package:flutter/material.dart';
import '../models/call_model.dart';


class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder: (context, index) => 
        Column(
          children: [
            Divider(
              height: 20.0,
            ),
            ListTile(
              leading: CircleAvatar(
                maxRadius: 30,
                backgroundImage: NetworkImage(callData[index].imageUrl),

              ),
              title: Text(
                callData[index].name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(callData[index].time,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
                ),
              ),
              trailing: Icon(Icons.call,
              color: Theme.of(context).accentColor,
              ),
              selected: true,
            )
          ],
        ),


    );
  }
}