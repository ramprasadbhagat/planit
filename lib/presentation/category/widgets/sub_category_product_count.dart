import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planit/presentation/theme/colors.dart';

class SubCategoryProductCount extends StatelessWidget {
  const SubCategoryProductCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 14,
        right: 14,
        top: 20,
        bottom: 10,
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '57 Items',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.textBlack,
                  fontSize: 16, //size.width * 0.04,
                ),
              ),
            ),
            TextSpan(
              text: ' in Dry Fruits',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.textBlack,
                  fontSize: 16, //size.width * 0.04,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
