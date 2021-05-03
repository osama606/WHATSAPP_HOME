import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
        accentColor: Color(0xff25D366),
      ),
      home: WhatsAppHome(),
    );
  }
}
