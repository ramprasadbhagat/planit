import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class ShimmerLoader extends StatelessWidget {
  const ShimmerLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      direction: ShimmerDirection.ltr,
      baseColor: AppColors.extraLightGray,
      highlightColor: AppColors.lightGray,
      child: Container(
        width: 380,
        height: 180,
        decoration: const BoxDecoration(
          color: AppColors.lightGray,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );

    // return ListView.builder(
    //     scrollDirection: Axis.horizontal,

    //     itemCount: 5, // Adjust the count based on your needs
    //     itemBuilder: (context, index) {
    //       return ListTile(
    //         title: Container(
    //           height: 20,
    //           width: 200,
    //           color: Colors.white,
    //         ),
    //       );
    //     },
    //   );
  }
}
