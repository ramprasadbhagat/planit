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

class ShopByCategory extends StatelessWidget {
  const ShopByCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubCategoryBloc, SubCategoryState>(
      buildWhen: (previous, current) =>
          previous.isFetching != current.isFetching,
      builder: (context, state) {
        if (state.isFetching) {
          return const ShimmerItem();
        } else if (state.shopByCategoryList.isEmpty) {
          return const NoData();
        }
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(
                title: 'Shop by category',
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                runSpacing: 10,
                alignment: WrapAlignment.start,
                children: state.shopByCategoryList
                    .map(
                      (e) => ShopByCategoryItem(
                        item: e,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ShopByCategoryItem extends StatelessWidget {
  final SubCategory item;
  const ShopByCategoryItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () {
        final categoryBloc = context.read<CategoryBloc>();
        categoryBloc.add(
          CategoryEvent.select(
            categoryBloc.state.validCategories
                .where(
                  (element) => element.name.displayLabel == 'Shop By Category',
                )
                .toList()
                .first,
          ),
        );
        context.read<SubCategoryBloc>().add(SubCategoryEvent.select(item));
        context.router.navigate(const CategoryRoute());
      },
      child: SizedBox(
        width: 120,
        height: 100,
        child: Card(
          child: Column(
            children: [
              SizedBox(
                height: 60,
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
              const SizedBox(
                height: 5,
              ),
              Text(
                item.name.displayLabel,
                style: textTheme.bodyMedium,
                maxLines: 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
