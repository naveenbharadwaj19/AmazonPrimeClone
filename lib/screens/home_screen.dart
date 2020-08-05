import 'package:AmazonPrimeVideoClone/Icons/prime_video_icon_icons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.indigo,
            Colors.indigo[800],
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Icon(PrimeVideoIcon.amazon,size: 28,),
          centerTitle: true,
        ),
        body: Center(
          child: Text("home page"),
        ),
      ),
    );
  }
}