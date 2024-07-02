import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/category/category_bloc.dart';
import 'package:planit/application/sub_category/sub_category_bloc.dart';
import 'package:planit/domain/sub_category/entities/sub_category.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class SubCategoryList extends StatelessWidget {
  const SubCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      buildWhen: (previous, current) =>
          previous.selectedCategory != current.selectedCategory,
      builder: (context, categoryState) {
        return Container(
          height: double.infinity,
          width: 100,
          // margin: const EdgeInsets.only(
          //   top: 5,
          // ),
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
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: categoryState.selectedCategory.subCategory.length,
            padding: const EdgeInsets.symmetric(
              vertical: 2,
              horizontal: 8,
            ),
            itemBuilder: (context, index) => SubCategoryCard(
              subCategory:
                  categoryState.selectedCategory.subCategory.elementAt(index),
            ),
          ),
        );
      },
    );
  }
}

class SubCategoryCard extends StatelessWidget {
  final SubCategory subCategory;
  const SubCategoryCard({
    super.key,
    required this.subCategory,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<SubCategoryBloc, SubCategoryState>(
      buildWhen: (previous, current) =>
          previous.selectedSubCategory != current.selectedSubCategory,
      builder: (context, state) {
        return InkWell(
          onTap: () => context.read<SubCategoryBloc>().add(
                SubCategoryEvent.select(subCategory),
              ),
          child: Container(
            height: 82,
            width: 80,
            margin: const EdgeInsets.only(
              top: 10,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: state.selectedSubCategory == subCategory
                  ? AppColors.selectedYellow
                  : Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0),
                  blurRadius: 1.5,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.network(
                //   subCategory.image.first,
                //   height: 43,
                //   width: 60,
                // ),
                CachedNetworkImage(
                  errorWidget: (context, url, error) =>
                      Image.asset(PngImage.placeholder),
                  imageUrl: subCategory.image.firstOrNull ?? '',
                  height: 43,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  subCategory.name.getValue(),
                  textAlign: TextAlign.center,
                  style: textTheme.bodySmall?.copyWith(fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
