import 'package:AmazonPrimeVideoClone/models/amazon_originals_img.dart';
import 'package:AmazonPrimeVideoClone/models/topscreen_images.dart';
import 'package:AmazonPrimeVideoClone/models/watch_next_model_img.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePageController extends StatelessWidget {
  final double _fontSize1 = 20;
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
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: _fontSize1),
          ),
        ),
        WatchNext(),
        Container(
          margin: EdgeInsets.all(20),
          child: Text(
            "Amazon Original Series",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: _fontSize1),
          ),
        ),
        AmazonOriginal(),
        Container(
          margin: EdgeInsets.all(20),
          child: Text(
            "Recommend Movies",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: _fontSize1),
          ),
        ),
        RecommendMovies(),
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
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: watchNextImg.length,
          itemBuilder: (context, index) {
            return Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 5),
                  height: 120,
                  width: 180,
                  child: ClipRRect(
                    child: Image.network(watchNextImg[index], fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 7),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Icon(
                      Icons.play_circle_outline,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

class AmazonOriginal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: amazonOriginalImg.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 5),
              height: 120,
              width: 180,
              child: ClipRRect(
                child:
                    Image.network(amazonOriginalImg[index], fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(7),
              ),
            );
          }),
    );
  }
}

class RecommendMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: amazonOriginalImg.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 5),
              height: 120,
              width: 180,
              child: ClipRRect(
                child:
                    Image.network(amazonOriginalImg[index], fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(7),
              ),
            );
          }),
    );
  }
}
