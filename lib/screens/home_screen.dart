import 'package:AmazonPrimeVideoClone/Icons/prime_video_icon_icons.dart';
import 'package:AmazonPrimeVideoClone/widgets/home_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text("Welcome Profile",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
          duration: Duration(seconds: 3),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     colors: [
      //       Colors.indigo,
      //       Colors.indigo[800],
      //     ],
      //     begin: Alignment.topLeft,
      //     end: Alignment.bottomRight,
      //   ),
      // ),                               --> Alternate bg color
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: const Color.fromRGBO(28, 37, 46, 1),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: const Icon(
              PrimeVideoIcon.amazon,
              size: 28,
            ),
            bottom: TabBar(
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                tabs: [
                  Tab(text: "Home"),
                  Tab(text: "Tv Shows"),
                  Tab(text: "Movies"),
                  Tab(text: "Kids"),
                ]),
            centerTitle: true,
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              HomePageController(),
              TvShows(),
              Movies(),
              Kids(),
            ],
          ),
        ),
      ),
    );
  }
}

class TvShows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.orangeAccent);
  }
}

class Movies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity, width: double.infinity, color: Colors.pink);
  }
}

class Kids extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.greenAccent);
  }
}
