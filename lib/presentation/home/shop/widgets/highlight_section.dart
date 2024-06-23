import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/highlight/highlight_product_bloc.dart';
import 'package:planit/domain/highlights/entities/highlight.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/core/section_title.dart';
import 'package:planit/presentation/home/shop/widgets/shimmer_items.dart';
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
              context.read<HighlightProductBloc>().add(
                  const HighlightProductEvent.fetch(),
                );
            // context.router.navigate(const HighLightRoute());
            },
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
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.highlights.length,
                  itemBuilder: (BuildContext context, int index) =>
                      HighlightItem(item: state.highlights.elementAt(index)),
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
        ),
        item.discountValue == '0'
            ? const SizedBox.shrink()
            : Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 4,
                ),
                margin: const EdgeInsets.only(top: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.black,
                ),
                child: Text(
                  '${item.discountValue} % off',
                  style: textTheme.bodySmall!.copyWith(color: AppColors.white),
                ),
              ),
      ],
    );
  }
}
