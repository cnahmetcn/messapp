import 'package:flutter/material.dart';
import 'package:messapp/screens/calls_page.dart';
import 'package:messapp/screens/camera_page.dart';
import 'package:messapp/screens/chat_page.dart';
import 'package:messapp/screens/status_page.dart';

class MessappMain extends StatefulWidget {
  @override
  _MessappMainState createState() => _MessappMainState();
}

class _MessappMainState extends State<MessappMain>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool _showMessagebtn = true;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(() {
      _showMessagebtn = _tabController.index != 0;
      setState(() {});
    });
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messapp"),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(text: "Sohbet"),
            Tab(text: "Durum"),
            Tab(text: "Aramalar"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraPage(),
          ChatPage(),
          StatusPage(),
          CallsPage(),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.pink,
          ),
        ],
      ),
      floatingActionButton: _showMessagebtn
          ? FloatingActionButton(
              child: Icon(Icons.message),
              onPressed: () {},
            )
          : null,
    );
  }
}
