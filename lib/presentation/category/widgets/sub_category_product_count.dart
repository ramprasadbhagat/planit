import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planit/application/category/category_bloc.dart';
import 'package:planit/application/sub_category/sub_category_bloc.dart';
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
      child: BlocBuilder<SubCategoryBloc, SubCategoryState>(
        buildWhen: (previous, current) =>
            previous.selectedSubCategory != current.selectedSubCategory,
        builder: (context, state) {
          final products = state.products;
          if (products.isEmpty) return const SizedBox.shrink();
          return RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${state.products.length} Items',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textBlack,
                      fontSize: 16, //size.width * 0.04,
                    ),
                  ),
                ),
                TextSpan(
                  text: ' in ${state.selectedSubCategory.name.displayLabel}',
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
          );
        },
      ),
    );
  }
}
