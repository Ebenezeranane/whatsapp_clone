import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chat_screen.dart';
import 'package:whatsapp_clone/status_screen.dart';
import 'package:whatsapp_clone/call_screen.dart';
import 'package:whatsapp_clone/camera_screen.dart';

class whatsAppHome extends StatefulWidget {

  var cameras;
  whatsAppHome(this.cameras);
  @override
  _whatsAppHomeState createState() => _whatsAppHomeState();
}

class _whatsAppHomeState extends State<whatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool showfabs = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showfabs = true;
      } else {
        showfabs = false;
      }
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 7.0,
        bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.camera_alt),),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS")
            ]
        ),

      actions: [
        Icon(Icons.search),
        Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
        Icon(Icons.more_vert)
      ],

      ),
      body: TabBarView(
            controller: _tabController,
          children: <Widget>[
            CameraScreen(widget.cameras),
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ]
      ),

        floatingActionButton: showfabs?FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
          foregroundColor: Colors.white,
          child: Icon(Icons.message),
          onPressed: ()=>print("open chats"),
    )
            :null

    );
  }
}

