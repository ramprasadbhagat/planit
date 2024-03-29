import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class ShoppingBanner extends StatelessWidget {
  const ShoppingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=2160/layout-engine/2022-05/Group-33704.jpg';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
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
                child: Image.network(
                  imageUrl,
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
