import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planit/presentation/category/widgets/category_dialog.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/responsive.dart';

class CategoryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final double width;
  const CategoryAppBar({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: Responsive.isMobile(context) ? 20 : 0,
        bottom: 16,
        left: 8,
        right: 8,
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
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 0,
        ),
        horizontalTitleGap: 8,
        leading: SvgPicture.asset(
          'assets/svg/back_arrow.svg',
          height: 24,
          width: 24,
        ),
        title: Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: InkWell(
            onTap: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (_) => const CategoryAlertDialog(),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
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
        ),
        trailing: SvgPicture.asset(
          'assets/svg/search.svg',
          height: 28,
          width: 28,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
