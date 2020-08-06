import 'package:flutter/material.dart';
import 'package:hello/ListItem.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("title"),
      ),
      body: new ListView.builder(itemBuilder: (context, index) {
        return new ListItem();
      },
        itemCount: 20,
      ),
    );
  }
}
