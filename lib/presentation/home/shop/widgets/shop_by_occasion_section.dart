import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/category/category_bloc.dart';
import 'package:planit/application/sub_category/sub_category_bloc.dart';
import 'package:planit/domain/category/entities/category.dart';
import 'package:planit/domain/sub_category/entities/sub_category.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/core/section_title.dart';
import 'package:planit/presentation/home/shop/widgets/shimmer_items.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class ShopByOccasion extends StatelessWidget {
  const ShopByOccasion({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryBloc = context.read<CategoryBloc>();
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(
          title: 'Shop by occasion',
          onTap: () {
            categoryBloc.add(const CategoryEvent.selectOccasion(true));
            categoryBloc.add(
              CategoryEvent.select(
                categoryBloc.state.occasionCategory.first,
              ),
            );
            context.router.navigate(CategoryRoute(openFromOccassion: true));
          },
        ),
        const SizedBox(
          height: 10,
        ),
        BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) {
            if (state.isFetching) {
              return const ShimmerItem();
            } else if (state.occasionCategory.isEmpty) {
              return const NoData();
            }
            return SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.occasionCategory.length,
                itemBuilder: (BuildContext context, int index) =>
                    ShopByOccasionItem(
                  item: state.occasionCategory[index],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class ShopByOccasionItem extends StatelessWidget {
  final Category item;
  const ShopByOccasionItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        // final categoryBloc = context.read<CategoryBloc>();
        // categoryBloc.add(
        //   CategoryEvent.select(
        //     categoryBloc.state.validCategories
        //         .where(
        //           (element) => element.name.displayLabel == 'Shop By occasion',
        //         )
        //         .toList()
        //         .first,
        //   ),
        // );
        // context.read<SubCategoryBloc>().add(SubCategoryEvent.select(item));
        // context.router.navigate(CategoryRoute(openFromOccassion: true));
        context.read<CategoryBloc>().add(CategoryEvent.select(item));
        context.read<CategoryBloc>().add(
              const CategoryEvent.selectOccasion(true),
            );

        context.read<SubCategoryBloc>().add(
              SubCategoryEvent.select(
                item.subCategory.firstOrNull ?? SubCategory.empty(),
              ),
            );
        context.router.navigate(CategoryRoute());
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 4,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: AppColors.white,
                child: CachedNetworkImage(
                  imageUrl: item.image.firstOrNull ?? '',
                  fit: BoxFit.scaleDown,
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.extraLightGray,
                    ),
                  ),
                  errorWidget: (context, error, stackTrace) => Image.asset(
                    PngImage.placeholder,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              item.name.displayLabel,
              style: textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
