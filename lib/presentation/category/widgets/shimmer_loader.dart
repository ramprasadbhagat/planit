import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:shimmer/shimmer.dart';

class SubCategoryBannerShimmer extends StatelessWidget {
  const SubCategoryBannerShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      direction: ShimmerDirection.ltr,
      baseColor: AppColors.extraLightGray,
      highlightColor: AppColors.lightGray,
      child: Container(
        width: double.maxFinite,
        height: 120,
        decoration: const BoxDecoration(
          color: AppColors.lightGray,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }
}
