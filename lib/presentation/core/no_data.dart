import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class NoData extends StatelessWidget {
  final String message;
  final String errorSvgImage;
  const NoData({
    super.key,
    this.message = 'No data found',
    this.errorSvgImage = SvgImage.noDataImage,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              errorSvgImage,
              height: 100,
              width: 100,
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
      ),
    );
  }
}
