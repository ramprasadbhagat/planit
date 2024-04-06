import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:planit/utils/png_image.dart';

class ShoppingBanner extends StatelessWidget {
  const ShoppingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      clipBehavior: Clip.antiAlias,
      child: FlutterCarousel(
        options: CarouselOptions(
          height: 160.0,
          viewportFraction: 1,
          autoPlay: true,
          showIndicator: true,
          slideIndicator: const CircularSlideIndicator(
            itemSpacing: 6,
            indicatorRadius: 2,
          ),
          indicatorMargin: 16,
        ),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  PngImage.banner,
                  width: 120,
                  height: 150,
                  fit: BoxFit.fitHeight,
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
