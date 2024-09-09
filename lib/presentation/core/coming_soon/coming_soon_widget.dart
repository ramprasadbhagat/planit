import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:planit/utils/animation_path.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        AnimationPath.comingSoon,
        height: MediaQuery.of(context).size.height * 0.26,
      ),
    );
  }
}
