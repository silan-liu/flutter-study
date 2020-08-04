import 'package:flutter/material.dart';

class DemoStateWidget extends StatefulWidget {
  String text;

  DemoStateWidget(this.text);

  @override
  _DemoStateWidgetState createState() => _DemoStateWidgetState(text);
}

class _DemoStateWidgetState extends State<DemoStateWidget> {
  String text;

  _DemoStateWidgetState(this.text);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print("initState");

    new Future.delayed(Duration(seconds: 1), () {
      setState(() {
        text = "过了 1 秒";
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 120,
      width: 300,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        color: Colors.white,
        border: new Border.all(color: Colors.red, width: 0.3),
      ),
      child: Text("hello"),
    );
  }
}
