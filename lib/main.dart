import 'package:flutter/material.dart';
import 'package:messapp/messapp_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Message App',
      theme: ThemeData(
        primaryColor: Colors.indigo[900],
        accentColor: Colors.white,
      ),
      home: MessappMain(),
    );
  }
}

