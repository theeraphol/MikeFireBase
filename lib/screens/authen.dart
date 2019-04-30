import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  Widget signUpButton() {
    return RaisedButton(
      color: Colors.white70,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: Text('Sign Up'),
      onPressed: () {},
    );
  }

  Widget signInButton() {
    return RaisedButton(
      color: Colors.white70,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: Text('Sign In'),
      onPressed: () {},
    );
  }

  Widget emailTextFormField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'Email :', hintText: 'you@mail.com'),
      style: TextStyle(color: Colors.white),
    );
  }

  Widget passwordTextFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
          labelText: 'Password :', hintText: 'More 6 Charactor'),
      style: TextStyle(color: Colors.white),
    );
  }

  Widget showAppName() {
    return Text(
      'M!KE Flutter',
      style: TextStyle(
          // fontFamily: 'Acme',
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.white),
    );
  }

  Widget showLogo() {
    return Image.asset('images/logo.png');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black54, Colors.black],
                begin: Alignment(1, 0))),
        padding: EdgeInsets.only(top: 80.0),
        alignment: Alignment(0, -1),
        child: Column(
          children: <Widget>[
            Container(
              width: 150.0,
              height: 150.0,
              child: showLogo(),
            ),
            Container(margin: EdgeInsets.only(top: 15.0), child: showAppName()),
            Container(
              margin: EdgeInsets.only(left: 50.0, right: 50.0),
              child: emailTextFormField(),
            ),
            Container(
              margin: EdgeInsets.only(left: 50.0, right: 50.0),
              child: passwordTextFormField(),
            ),
            Container(
              margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 15.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 4.0),
                      child: signInButton(),
                    ),
                  ),
                  Expanded(
                    child: signUpButton(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
