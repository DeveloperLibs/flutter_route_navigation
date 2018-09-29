import 'dart:async';

import 'package:flutter/material.dart';

class ProfilesScreen extends StatefulWidget {
  final String userName;

  ProfilesScreen(this.userName);

  @override
  _FormState createState() => _FormState(userName);
}

class _FormState extends State<ProfilesScreen> {
  String userName;

  _FormState(this.userName);


  @override
  void initState() {
    super.initState();
  }

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
          "Profile",
          style: new TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              final result = Navigator.of(context).pushNamed('/settingscreen');
              result.then((result) {
                setState(() {
                  userName = result as String;
                });
              });

            },
          ),
        ],
      ),
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Hi " + userName,
              style: new TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
