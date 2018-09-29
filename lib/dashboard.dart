import 'package:flutter/material.dart';
import 'package:flutter_route_navigation/profilescreen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey,
      appBar: new AppBar(
        leading: new Icon(Icons.home,color: Colors.white,),
        title: new Text("Dashboard",

          style: new TextStyle(color: Colors.white),
        ),
        actions: <Widget>[

          new IconButton(
            icon: new Icon(Icons.account_box,color: Colors.white,),
            onPressed: () {

              String userName = "Developer";
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new ProfilesScreen(userName)));


            },
          )
        ],
      ),
      body: new Center(
        child: new Text(
          "Dashboard Screen",
          style: new TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
