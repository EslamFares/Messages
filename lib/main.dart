import 'package:flutter/material.dart';
import 'chat/chat_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messages',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChatList(),
    );
  }
}
