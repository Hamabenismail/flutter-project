import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class CarouselWidget extends StatefulWidget {
  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("asset/images/c1.jpg"),
          AssetImage("asset/images/m1.jpeg"),
          AssetImage("asset/images/w3.jpeg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        indicatorBgPadding: 5.0,
      ) ,
    );
  }
}
