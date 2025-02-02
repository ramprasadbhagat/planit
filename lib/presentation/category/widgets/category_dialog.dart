// ignore_for_file: unused_import

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planit/application/sub_category/sub_category_bloc.dart';
import 'package:planit/domain/category/entities/category.dart';
import 'package:planit/domain/sub_category/entities/sub_category.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/application/category/category_bloc.dart';
import 'package:planit/utils/png_image.dart';

class CategoryAlertDialog extends StatelessWidget {
  const CategoryAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(
        vertical: 50,
        horizontal: 20,
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      content: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocBuilder<CategoryBloc, CategoryState>(
                    buildWhen: (previous, current) =>
                        previous.validCategories != current.validCategories,
                    builder: (context, state) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.isOcassionSelected
                                ? 'Shop by Occasion'
                                : 'Shop by category',
                            style: textTheme.titleLarge?.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${state.validCategories.length} categories',
                            style: textTheme.labelSmall?.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: AppColors.lightOrange,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  InkWell(
                    onTap: () {
                      context.router.maybePop();
                    },
                    child: const Icon(
                      Icons.clear,
                      color: AppColors.grey3,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 8,
                  ),
                  child: BlocBuilder<CategoryBloc, CategoryState>(
                    buildWhen: (previous, current) =>
                        previous.validCategories != current.validCategories,
                    builder: (context, state) {
                      return Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: state.validCategories
                            .map((e) => CategoryCard(category: e))
                            .toList(),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({
    required this.category,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () {
        context.read<CategoryBloc>().add(CategoryEvent.select(category));
        context.read<SubCategoryBloc>().add(
              SubCategoryEvent.select(
                category.subCategory.firstOrNull ?? SubCategory.empty(),
              ),
            );
        context.router.maybePop();
      },
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.12,
        width: MediaQuery.sizeOf(context).width * 0.21,
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 4,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.0,
              blurRadius: 3,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl: category.image.firstOrNull ?? '',
              height: 45,
              fit: BoxFit.fill,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.extraLightGray,
                ),
              ),
              errorWidget: (context, error, stackTrace) => Image.asset(
                PngImage.placeholder,
                height: 45,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: Text(
                category.name.displayLabel,
                textAlign: TextAlign.center,
                style: textTheme.bodySmall?.copyWith(fontSize: 10),
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
