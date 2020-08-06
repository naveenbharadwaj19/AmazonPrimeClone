import 'package:AmazonPrimeVideoClone/models/topscreen_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePageController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SwipeImages(),
        Container(
          margin: EdgeInsets.all(20),
          child: Text(
            "Watch next TV and movies",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        WatchNext(),
        Container(
          margin: EdgeInsets.all(20),
          child: Text(
            "Amazon Original Series",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        AmazonOriginal(),
        Container(
          margin: EdgeInsets.all(20),
          child: Text(
            "Recommend Movies",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ],
    );
  }
}

class SwipeImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Swiper(
          itemCount: topScreenImages.length,
          autoplay: true,
          // control: SwiperControl(),
          pagination: SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                  color: Colors.grey, activeColor: Colors.white)),
          itemBuilder: (context, index) {
            return Image.network(
              topScreenImages[index],
              fit: BoxFit.fill,
            );
          }),
    );
  }
}

class WatchNext extends StatelessWidget {
  List<Color> _colors = [Colors.red,Colors.white,Colors.tealAccent,Colors.yellow,Colors.greenAccent,Colors.orangeAccent];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: _colors.length,itemBuilder: (context,index){
        return Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left:5),
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                color: _colors[index],
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              // child: Text("h"),
            ),
            Container(
              margin: EdgeInsets.only(left:7),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Icon(Icons.play_circle_outline,size: 32,),
              ),
            ),
          ],
        );
      }),
    );
  }
}

class AmazonOriginal extends StatelessWidget {
  List<Color> _colors = [Colors.red,Colors.white,Colors.tealAccent,Colors.yellow,Colors.greenAccent,Colors.orangeAccent];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: _colors.length,itemBuilder: (context,index){
        return 
            Container(
              margin: EdgeInsets.only(left:5),
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                color: _colors[index],
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              // child: Text("h"),
            );
      }),
    );
  }
}