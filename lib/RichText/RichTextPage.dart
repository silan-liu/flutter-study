import 'package:flutter/material.dart';

class RichTextPage extends StatefulWidget {
  @override
  _RichTextPageState createState() => _RichTextPageState();
}

class _RichTextPageState extends State<RichTextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("RichText"),
        actions: [
          IconButton(
            onPressed: () {
              print("clicked");
            },
            icon: Icon(Icons.ac_unit),
          ),
          IconButton(
            onPressed: () {
              print("clicked2");
            },
            icon: Icon(Icons.access_alarm),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Builder(builder: (context) {
          return Center(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: "hello")
                ]
              )
            ),
          );
        }),
      ),

    );
  }
}
