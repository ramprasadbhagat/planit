import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/category/category_bloc.dart';
import 'package:planit/domain/category/entities/category.dart';
import 'package:planit/presentation/core/section_title.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';

class ShopByCategory extends StatelessWidget {
  const ShopByCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      buildWhen: (previous, current) =>
          previous.isFetching != current.isFetching,
      builder: (context, state) {
        if (state.validCategories.isEmpty) return const SizedBox();
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(
                title: 'Shop by category',
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                runSpacing: 10,
                alignment: WrapAlignment.start,
                children: state.validCategories
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
  final Category item;
  const ShopByCategoryItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () {
        context.read<CategoryBloc>().add(CategoryEvent.select(item));
        context.router.navigate(const CategoryRoute());
      },
      child: Card(
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.25,
          height: MediaQuery.sizeOf(context).height * 0.11,
          padding: const EdgeInsets.symmetric(vertical: 9),
          child: Column(
            children: [
              SizedBox(
                child: CachedNetworkImage(
                  imageUrl: item.image.firstOrNull ?? '',
                  fit: BoxFit.scaleDown,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(
                    color: AppColors.extraLightGray,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: Text(
                  item.name.displayLabel,
                  style: textTheme.bodySmall,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
