import 'package:flutter/material.dart';
import 'package:hello/HomeListItem.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("title"),
      ),
      body: new ListView.builder(itemBuilder: (context, index) {
        return new HomeListItem();
      },
        itemCount: 20,
      ),
    );
  }
}
