import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class NoData extends StatelessWidget {
  const NoData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 0,
      ), // Border width
      alignment: Alignment.center,
      child: SvgPicture.asset(
        SvgImage.noDataImage,
        height: 100,
        width: 100,
      ),
    );
  }
}
