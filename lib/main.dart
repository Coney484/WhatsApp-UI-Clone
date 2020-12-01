import 'package:WhatsAppUI/whatsapp_home.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

List<CameraDescription> cameras;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      theme: new ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: new Color(0xff25D366),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white
        ),
        bottomAppBarColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome(),
    );
  }
}
