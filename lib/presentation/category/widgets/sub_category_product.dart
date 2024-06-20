import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/sub_category/sub_category_bloc.dart';
import 'package:planit/presentation/category/widgets/product_card.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/utils/responsive.dart';

class SubCategoryProduct extends StatelessWidget {
  const SubCategoryProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubCategoryBloc, SubCategoryState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        if (state.products.isEmpty) {
          return const NoData();
        }
        return Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Responsive.isWeb(context) ? 5 : 2,
              mainAxisExtent: 180,
            ),
            itemCount: state.products.length,
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 6, bottom: 5),
                child: ProductCard(
                  product: state.products.elementAt(index),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
