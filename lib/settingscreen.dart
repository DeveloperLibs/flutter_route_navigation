import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: new Text(
          "Setting Screen",
          style: new TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.popUntil(
                  context, ModalRoute.withName('/dashboardscreen'));
            },
          ),
        ],
      ),
      body: new Center(
        // 3
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              onPressed: () async {
                Navigator.pop(context, "Developer Libs");
              },
              child: new Text("Update name"),
            )
          ],
        ),
      ),
    );
  }
}
