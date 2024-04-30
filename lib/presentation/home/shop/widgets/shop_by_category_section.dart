import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/category/category_bloc.dart';
import 'package:planit/domain/category/entities/category.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/sub_category/entities/sub_category.dart';
import 'package:planit/presentation/core/section_title.dart';
import 'package:planit/presentation/router/router.gr.dart';

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
                runAlignment: WrapAlignment.start,
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
                child: Image.network(
                  item.image.first,
                  fit: BoxFit.scaleDown,
                ),
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

List<Category> categoryList = <Category>[
  Category(
    image: ['category_1.png'],
    name: StringValue('Dry fruits'),
    subCategory: <SubCategory>[],
  ),
  Category(
    image: ['category_2.png'],
    name: StringValue('Gourmet cheese'),
    subCategory: <SubCategory>[],
  ),
  Category(
    image: ['category_3.png'],
    name: StringValue('Powdered spices'),
    subCategory: <SubCategory>[],
  ),
];
