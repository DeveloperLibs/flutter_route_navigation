import 'package:flutter/material.dart';
class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Landing Screen",
        style: new TextStyle(color: Colors.white),
        ),
      ),
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/loginscreen');
              },
              child: new Text("Login"),
            ),


          ],
        ),
      ),
    );
  }
}
