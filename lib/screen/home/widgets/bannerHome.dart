import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

class BannerHome extends StatelessWidget {
  final List<Widget> carouselItems = [
    Image.asset('assets/images/bannerSushi1.jpg',fit: BoxFit.fill,),
    // Image.network('https://img.freepik.com/premium-photo/abstract-colorful-splash-3d-background_950002-9578.jpg?w=360',fit:  BoxFit.fill,),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1,
        height: 24.h,
        autoPlay: false, 
        aspectRatio: 16 / 9, 
        enlargeCenterPage: false,
      ),
      items: carouselItems.map((widget) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              // margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: widget,
            );
          },
        );
      }).toList(),
    );
  }
}
