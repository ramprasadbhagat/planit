import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class NoData extends StatelessWidget {
  final String message;
  final String errorSvgImage;
  final double imageVerticalPadding;
  final double imageHeight;
  final double imageWidth;
  const NoData({
    super.key,
    this.message = 'No data found',
    this.errorSvgImage = SvgImage.noDataImage,
    this.imageVerticalPadding = 0,
    this.imageHeight = 100,
    this.imageWidth = 100,
  });

  factory NoData.ordersHistory() => const NoData(
        message: 'Hmm, looks like you don’t have any orders here.',
        imageVerticalPadding: 25,
      );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: imageVerticalPadding),
            child: SvgPicture.asset(
              errorSvgImage,
              height: imageHeight,
              width: imageWidth,
            ),
          ),
          Text(
            message,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.neutralsGrey,
            ),
          ),
        ],
      ),
    );
  }
}
