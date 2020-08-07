import 'package:AmazonPrimeVideoClone/Icons/prime_video_icon_icons.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(PrimeVideoIcon.amazon),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('Sign in'),
            RaisedButton(
              onPressed: () {},
              child: Text('Sign in'),
            ),
          ],
        ),
      ),
    );
  }
}
