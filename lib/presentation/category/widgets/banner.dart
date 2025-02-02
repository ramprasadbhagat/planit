import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:planit/application/banner/banner_bloc.dart';
import 'package:planit/presentation/category/widgets/shimmer_loader.dart';
import 'package:planit/presentation/core/add_to_cart_bottom_sheet.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class SubcategoryBanner extends StatefulWidget {
  final bool showOccasionBanner;
  const SubcategoryBanner({super.key, required this.showOccasionBanner});

  @override
  State<SubcategoryBanner> createState() => _SubcategoryBannerState();
}

class _SubcategoryBannerState extends State<SubcategoryBanner> {
  @override
  void initState() {
    if (widget.showOccasionBanner) {
      context.read<BannerBloc>().add(const BannerEvent.fetchOccassionBanner());
    } else {
      context.read<BannerBloc>().add(const BannerEvent.fetchCategoryBanner());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerBloc, BannerState>(
      buildWhen: (previous, current) {
        if (widget.showOccasionBanner) {
          return previous.isOccassionBannerFetching !=
              current.isOccassionBannerFetching;
        }
        return previous.isCategoryBannerFetching !=
            current.isCategoryBannerFetching;
      },
      builder: (context, state) {
        if (state.isCategoryBannerFetching || state.isOccassionBannerFetching) {
          return const Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 4,
              right: 4,
            ),
            child: Center(child: SubCategoryBannerShimmer()),
          );
        } else if ((!widget.showOccasionBanner &&
                state.categoryBanner.isEmpty) ||
            (widget.showOccasionBanner && state.occassionBanner.isEmpty)) {
          return const SizedBox.shrink();
        }

        return Card(
          elevation: 3,
          clipBehavior: Clip.hardEdge,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          margin: const EdgeInsets.only(
            top: 10,
            left: 4,
            right: 4,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              FlutterCarousel(
                options: CarouselOptions(
                  viewportFraction: 1,
                  height: 120,
                  autoPlay: true,
                  showIndicator: true,
                  slideIndicator: const CircularSlideIndicator(
                    itemSpacing: 8,
                    indicatorRadius: 2,
                  ),
                  indicatorMargin: 10,
                ),
                items: (widget.showOccasionBanner
                        ? state.occassionBanner
                        : state.categoryBanner)
                    .map((i) {
                  return GestureDetector(
                    onTap: () {
                      if (i.option == 'Deal') {
                        showModalBottomSheet<void>(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) => CommonBottomSheet(
                            child: AddToCartBottomSheet(
                              productId: i.productId,
                            ),
                          ),
                        );
                      }
                    },
                    child: Column(
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: double.maxFinite,
                            child: Image.network(
                              i.bannerImages.firstOrNull ?? '',
                              fit: BoxFit.fill,
                              errorBuilder: (context, error, stack) {
                                if (error is NetworkImageLoadException &&
                                    error.statusCode == 404) {
                                  return Image.asset(
                                    PngImage.placeholder,
                                    fit: BoxFit.fitHeight,
                                  );
                                }

                                return Image.asset(
                                  PngImage.placeholder,
                                  fit: BoxFit.fitHeight,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
              Positioned(
                bottom: 8,
                child: Container(
                  height: 10,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.black.withOpacity(0.2),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
