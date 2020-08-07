import 'package:AmazonPrimeVideoClone/screens/downloads_screen.dart';
import 'package:AmazonPrimeVideoClone/screens/home_screen.dart';
import 'package:AmazonPrimeVideoClone/screens/my_stuff_screen.dart';
import 'package:AmazonPrimeVideoClone/screens/search_screen.dart';
import 'package:AmazonPrimeVideoClone/widgets/bottom_widgets.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Amazon Prime Video",
      home: MyAppMain(),
    );
  }
}

class MyAppMain extends StatefulWidget {
  @override
  _MyAppMainState createState() => _MyAppMainState();
}

class _MyAppMainState extends State<MyAppMain> {
  List _widgetsScreenTapped = [HomeScreen(),SearchScreen(),DownloadsScreen(),MyStuffScreen()];
  int index = 0;
  tapped(int idx){
    setState(() {
      index = idx;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetsScreenTapped[index],
      bottomNavigationBar: BottomWidgets(index, tapped),
    );
  }
}

