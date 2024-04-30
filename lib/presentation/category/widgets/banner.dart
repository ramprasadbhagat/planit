import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SubcategoryBanner extends StatelessWidget {
  const SubcategoryBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final carouselItems = <Widget>[
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage(
              'assets/demo/banner.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage(
              'assets/demo/banner.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage(
              'assets/demo/banner.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    ];
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 4,
        right: 4,
      ),
      child: CarouselSlider(
        items: carouselItems,
        options: CarouselOptions(
          viewportFraction: 0.95,
          height: 120,
          autoPlay: true,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          onPageChanged: (index, reason) {},
        ),
      ),
    );
  }
}
