import 'package:flutter/material.dart';

class HomeListItem extends StatefulWidget {
  String text;

  @override
  _HomeListItemState createState() => _HomeListItemState();
}

class _HomeListItemState extends State<HomeListItem> {
  void initState() {
    // TODO: implement initState
    super.initState();

    print("initState");
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

  _getBottomItem(IconData icon, String text, int flex) {
    return Expanded(
      flex: flex,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
                icon,
                size: 16.0,
                color: Colors.grey
            ),
            Padding(padding: EdgeInsets.only(left: 5)),
            Text(
              text,
              style: TextStyle(color: Colors.grey, fontSize: 14.0),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: FlatButton(
          onPressed: () => print("点击了"),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                    child: Text(
                      "描述真的很长很长很长很长很长很长很长很长很长很长很长很长很长很长哦~",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),

                    margin: EdgeInsets.only(top: 5, bottom: 2),
                    alignment: Alignment.topLeft
                ),
                Padding(padding: EdgeInsets.all(10)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _getBottomItem(Icons.star, "100", 1),
                    _getBottomItem(Icons.link, "200", 2),
                    _getBottomItem(Icons.subject, "300", 3)
                  ],
                ),
                Padding(padding: EdgeInsets.all(5),)
              ]
          ),
        ),
      ),
    );
  }
}
