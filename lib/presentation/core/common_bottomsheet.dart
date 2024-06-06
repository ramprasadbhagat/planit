import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class CommonBottomSheet extends StatelessWidget {
  const CommonBottomSheet({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          child,
          Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  context.router.maybePop();
                },
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Icon(
                    Icons.clear,
                    color: AppColors.grey3,
                    size: 22,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
