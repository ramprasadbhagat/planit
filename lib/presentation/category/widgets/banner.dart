import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:planit/application/banner/banner_bloc.dart';
import 'package:planit/presentation/category/widgets/shimmer_loader.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class SubcategoryBanner extends StatefulWidget {
  const SubcategoryBanner({super.key});

  @override
  State<SubcategoryBanner> createState() => _SubcategoryBannerState();
}

class _SubcategoryBannerState extends State<SubcategoryBanner> {
  @override
  void initState() {
    context.read<BannerBloc>().add(const BannerEvent.fetchCategoryBanner());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerBloc, BannerState>(
      buildWhen: (previous, current) =>
          previous.isCategoryBannerFetching != current.isCategoryBannerFetching,
      builder: (context, state) {
        if (state.isCategoryBannerFetching) {
          return const Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 4,
              right: 4,
            ),
            child: Center(child: SubCategoryBannerShimmer()),
          );
        } else if (state.categoryBanner.isEmpty) {
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
                items: state.categoryBanner.map((i) {
                  return Column(
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
