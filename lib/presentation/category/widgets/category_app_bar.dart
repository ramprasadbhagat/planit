import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planit/presentation/category/widgets/category_dialog.dart';
import 'package:planit/presentation/theme/colors.dart';

class CategoryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final double width;
  const CategoryAppBar({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
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
                Padding(
                  padding: const EdgeInsets.only(
                    top: 4,
                  ),
                  child: SvgPicture.asset(
                    'assets/svg/back_arrow.svg',
                    height: 23,
                    width: 13,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (_) => CategoryAlertDialog(),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dry fruits',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textBlack,
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'See all categories',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.deepOrange,
                              ),
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
            Padding(
              padding: const EdgeInsets.only(
                top: 4,
              ),
              child: SvgPicture.asset(
                'assets/svg/search.svg',
                height: 24,
                width: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
