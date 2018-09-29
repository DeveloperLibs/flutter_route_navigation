import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_route_navigation/dashboard.dart';
import 'package:flutter_route_navigation/landingscreen.dart';
import 'package:flutter_route_navigation/loginscreen.dart';
import 'package:flutter_route_navigation/settingscreen.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      primaryColor: const Color(0xFF02BB9F),
      primaryColorDark: const Color(0xFF167F67),
      accentColor: const Color(0xFFFFFFFF),
    ),
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/landingscreen': (BuildContext context) => new LandingScreen(),
      '/loginscreen': (BuildContext context) => new LoginScreen(),
      '/dashboardscreen': (BuildContext context) => new DashboardScreen(),
      '/settingscreen': (BuildContext context) => new SettingScreen(),
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/landingscreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset('assets/logo.png'),
      ),
    );
  }
}
