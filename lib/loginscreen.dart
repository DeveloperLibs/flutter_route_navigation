import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<LoginScreen> {
  GlobalKey<FormState> _key = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
          'Login',
          style: new TextStyle(color: Colors.white),
        ),
      ),
      body: new SingleChildScrollView(
        child: new Container(
          margin: new EdgeInsets.all(15.0),
          child: new Form(
            key: _key,
            child: getFormUI(),
          ),
        ),
      ),
    );
  }

  Widget getFormUI() {
    return new Column(
      children: <Widget>[
        new TextFormField(
          decoration: new InputDecoration(hintText: 'Email'),
          maxLength: 32,
        ),
        new TextFormField(
          decoration: new InputDecoration(hintText: 'Password'),
          keyboardType: TextInputType.phone,
          maxLength: 10,
        ),
        new SizedBox(height: 15.0),
        new RaisedButton(
          onPressed: _submit,
          child: new Text('Login'),
        )
      ],
    );
  }

  _submit() {

    Navigator.of(context).pushNamedAndRemoveUntil(
        '/dashboardscreen', ModalRoute.withName('/'));
  }
}
