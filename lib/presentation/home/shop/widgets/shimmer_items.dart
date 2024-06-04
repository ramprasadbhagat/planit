import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class ShimmerItem extends StatelessWidget {
  const ShimmerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Shimmer.fromColors(
              baseColor: AppColors.extraLightGray,
              highlightColor: const Color.fromARGB(255, 204, 200, 200),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
              height: 10,
            ),
            Shimmer.fromColors(
              baseColor: AppColors.extraLightGray,
              highlightColor: Colors.grey,
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
              height: 10,
            ),
            Shimmer.fromColors(
              baseColor: AppColors.extraLightGray,
              highlightColor: Colors.grey,
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.17,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
