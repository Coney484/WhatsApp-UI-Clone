import 'package:flutter/material.dart';

class Wcards extends StatelessWidget {
  final String name, imageUrl, time;

  Wcards(this.name, this.imageUrl, this.time);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 30,
        foregroundColor: Colors.deepPurple,
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(time),
    );
  }
}
