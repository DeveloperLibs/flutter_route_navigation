import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  TextEditingController _nameFieldController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey,
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
            new Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50.0),
              child: new TextFormField(
                maxLength: 32,
                controller: _nameFieldController,
              ),
            ),
            new RaisedButton(
              onPressed: () async {
                Navigator.pop(context, _nameFieldController.text);
              },
              child: new Text("Send back"),
            )
          ],
        ),
      ),
    );
  }
}
