import 'package:AmazonPrimeVideoClone/Icons/prime_download_icon_icons.dart';
import 'package:flutter/material.dart';

class BottomWidgets extends StatelessWidget {
  final int index;
  final Function tapped;

  BottomWidgets(this.index,this.tapped);
  final double _size = 28;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: tapped,
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.blue,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(
            Icons.home,
            size: _size,
          ),
          title: Text("home"),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(
            Icons.search,
            size: _size,
          ),
          title: Text("Find"),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(
            PrimeDownloadIcon.download,
            size: _size,
          ),
          title: Text("Downloads"),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(
            Icons.account_circle,
            size: _size,
          ),
          title: Text("My Stuff"),
        ),
      ],
    );
  }
}
