import 'package:WhatsAppUI/pages/calls_screen.dart';
import 'package:WhatsAppUI/pages/camera_screen.dart';
import 'package:WhatsAppUI/pages/chat_screen.dart';
import 'package:WhatsAppUI/pages/status_screen.dart';
import 'package:flutter/material.dart';

class WhatsAppHome extends StatefulWidget {
  var cameras;
  WhatsAppHome({this.cameras});
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('WhatsApp'),
        elevation: 0.7,
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: new EdgeInsets.all(10.0)),
          new Icon(Icons.more_vert),
          new Padding(padding: new EdgeInsets.all(5.0)),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: 'CHATS'),
            new Tab(text: 'STATUS'),
            new Tab(text: 'CALLS'),
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        child: Icon(Icons.message,
        color: Colors.white,),
        onPressed: () {},
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}
