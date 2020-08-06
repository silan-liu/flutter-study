import 'package:flutter/material.dart';
import 'RouterDef.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var routesList = routers.keys.toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: new Container(
        child: ListView.builder(
            itemCount: routesList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  print("click");
                  Navigator.of(context).pushNamed(routesList[index]);
                },
                child: Card(
                  margin: EdgeInsets.only(top: 10),
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(0),
                    height: 50,
                    child: Text(routesList[index]),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

