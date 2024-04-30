import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/highlight/highlight_product_bloc.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/presentation/core/section_title.dart';
import 'package:planit/presentation/theme/colors.dart';

class HighLightSection extends StatelessWidget {
  const HighLightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HighlightProductBloc, HighlightProductState>(
      buildWhen: (previous, current) => previous.products != current.products,
      builder: (context, state) {
        if (state.products.isEmpty) return const SizedBox.shrink();
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(
                title: 'Highlights',
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.products.length,
                  itemBuilder: (BuildContext context, int index) =>
                      HighlightItem(item: state.products.elementAt(index)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class HighlightItem extends StatelessWidget {
  final Product item;
  const HighlightItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Card(
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.33,
              decoration: BoxDecoration(
                color: AppColors.extraLightGray,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Image.network(item.productImages.first),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    item.name,
                    style: textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        if (true)
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.black,
            ),
            child: Text(
              '12 % off',
              style: textTheme.bodySmall!.copyWith(color: AppColors.white),
            ),
          ),
      ],
    );
  }
}
