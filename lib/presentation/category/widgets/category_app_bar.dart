// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/application/category/category_bloc.dart';
import 'package:planit/presentation/category/widgets/category_dialog.dart';

class CategoryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final double width;
  const CategoryAppBar({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Container(
        height: 58,
        padding: const EdgeInsets.only(
          top: 10,
          left: 16,
          right: 16,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0),
              blurRadius: 0.8,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Padding(
                //   padding: const EdgeInsets.only(
                //     top: 4,
                //   ),
                //   child: SvgPicture.asset(
                //     'assets/svg/back_arrow.svg',
                //     height: 23,
                //     width: 13,
                //   ),
                // ),
                const SizedBox(
                  width: 12,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (_) => const CategoryAlertDialog(),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlocBuilder<CategoryBloc, CategoryState>(
                        buildWhen: (previous, current) =>
                            previous.selectedCategory !=
                            current.selectedCategory,
                        builder: (context, state) {
                          return Text(
                            state.selectedCategory.name.displayLabel,
                            style: textTheme.labelLarge,
                          );
                        },
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'See all categories',
                            style: textTheme.labelSmall?.copyWith(
                              color: AppColors.deepOrange,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SvgPicture.asset(
                            'assets/svg/arrow_down.svg',
                            height: 6,
                            width: 6,
                            color: AppColors.deepOrange,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //     top: 4,
            //   ),
            //   child: SvgPicture.asset(
            //     'assets/svg/search.svg',
            //     height: 24,
            //     width: 24,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
