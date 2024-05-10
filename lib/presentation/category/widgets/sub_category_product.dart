import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/sub_category/sub_category_bloc.dart';
import 'package:planit/presentation/category/widgets/product_card.dart';
import 'package:planit/utils/responsive.dart';

class SubCategoryProduct extends StatelessWidget {
  const SubCategoryProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubCategoryBloc, SubCategoryState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        if (state.products.isEmpty) {
          return const Expanded(child: Center(child: Text('No Item')));
        }
        return Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Responsive.isWeb(context) ? 5 : 2,
              mainAxisExtent: MediaQuery.sizeOf(context).height * 0.21,
            ),
            itemCount: state.products.length,
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            itemBuilder: (context, index) {
              return ProductCard(
                product: state.products.elementAt(index),
              );
            },
          ),
        );
      },
    );
  }
}