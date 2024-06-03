import 'package:flutter/material.dart';
import 'package:planit/config.dart';
import 'package:planit/locator.dart';
import 'package:planit/utils/png_image.dart';

class ImageWidget extends StatelessWidget {
  final String link;
  final double height;
  final BoxFit? fit;
  const ImageWidget(
    this.link, {
    super.key,
    required this.height,
    this.fit = BoxFit.fill,
  });

  @override
  Widget build(BuildContext context) {
    return locator<Config>().appFlavor == Flavor.mock
        ? Image.asset(PngImage.placeholder)
        : Image.network(
            link,
            height: height,
            fit: fit,
          );
  }
}
