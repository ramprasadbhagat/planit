import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/highlight/highlight_product_bloc.dart';
import 'package:planit/domain/highlights/entities/highlight.dart';
import 'package:planit/presentation/core/add_to_cart_bottom_sheet.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/core/discount_widget/discount_widget.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/core/section_title.dart';
import 'package:planit/presentation/home/shop/widgets/shimmer_items.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class HighLightSection extends StatelessWidget {
  const HighLightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SectionTitle(
            title: 'Highlights',
            onTap: () {
              context.router.navigate(const HighLightsRoute());
            },
            hideViewAllButton:
                context.read<HighlightProductBloc>().state.highlights.isEmpty,
          ),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<HighlightProductBloc, HighlightProductState>(
            builder: (context, state) {
              if (state.isFetching) {
                return const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(child: ShimmerItem()),
                );
                // return const SizedBox(
                //   height: 100,
                //   width: double.infinity,
                //   child: Center(child: CircularProgressIndicator()),
                // );
              } else if (state.highlights.isEmpty) {
                return const SizedBox(
                  height: 180,
                  child: NoData(),
                );
              }
              return SizedBox(
                height: 180,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.highlights.length,
                  itemBuilder: (BuildContext context, int index) =>
                      HighlightItem(item: state.highlights.elementAt(index)),
                  separatorBuilder: (context, index) =>
                      state.highlights.last == state.highlights[index]
                          ? const SizedBox.shrink()
                          : const Padding(padding: EdgeInsets.only(right: 8)),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class HighlightItem extends StatelessWidget {
  final Highlight item;
  const HighlightItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        InkWell(
          onTap: () => showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) => CommonBottomSheet(
              child: AddToCartBottomSheet(
                productId: item.toProduct.productId.getValue(),
                attributeItemId: item.attributeItemId.isValid()
                    ? item.attributeItemId.getValue()
                    : null,
              ),
            ),
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
                SizedBox(
                  height: 80,
                  child: CachedNetworkImage(
                    imageUrl: item.productImages.firstOrNull ?? '',
                    errorWidget: (context, url, error) =>
                        Image.asset(PngImage.placeholder),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.05,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  alignment: Alignment.center,
                  child: Text(
                    item.productName,
                    style: textTheme.bodySmall,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (item.toProduct.inventory.isDiscountApplied)
          Discount.ribbon(
            discountPercentage: item.toProduct.inventory.discountPercentage,
            width: MediaQuery.sizeOf(context).width * 0.33,
            height: 180,
          ),
      ],
    );
  }
}
