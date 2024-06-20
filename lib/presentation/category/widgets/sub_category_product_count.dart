import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planit/application/sub_category/sub_category_bloc.dart';
import 'package:planit/presentation/theme/colors.dart';

class SubCategoryProductCount extends StatelessWidget {
  const SubCategoryProductCount({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(
        left: 14,
        right: 14,
        top: 20,
        bottom: 10,
      ),
      child: BlocBuilder<SubCategoryBloc, SubCategoryState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          final products = state.products;
          if (products.isEmpty) return const SizedBox.shrink();
          return RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${state.products.length} Items',
                  style: textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' in ${state.selectedSubCategory.name.displayLabel}',
                  style: textTheme.labelMedium
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
