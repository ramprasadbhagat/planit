import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/svg_image.dart';

@RoutePage()
class OrderListPage extends StatefulWidget {
  const OrderListPage({super.key});

  @override
  State<OrderListPage> createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {
  List<String> images = [
    PngImage.loginBackGround,
    PngImage.placeholder,
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order List',
          style: textTheme.labelLarge,
        ),
        leadingWidth: 20,
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColors.lightGrey,
          ),
          onPressed: () => context.router.maybePop(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(
                15,
              ),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 14,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            images.isEmpty
                                ? SizedBox(
                                    height: 70,
                                    child: Center(
                                      child: Image.asset(
                                        PngImage.placeholder,
                                        height: 67,
                                        width: 63,
                                      ),
                                    ),
                                  )
                                : SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: FlutterCarousel(
                                      options: CarouselOptions(
                                        height: 70,
                                        viewportFraction: 1,
                                        showIndicator: true,
                                        enableInfiniteScroll: true,
                                        slideIndicator:
                                            const CircularSlideIndicator(
                                          itemSpacing: 10,
                                          indicatorRadius: 4,
                                          currentIndicatorColor:
                                              AppColors.transparent,
                                          indicatorBackgroundColor:
                                              AppColors.transparent,
                                        ),
                                        indicatorMargin: 8,
                                      ),
                                      items: images
                                          .map(
                                            (e) => Image.asset(
                                              e,
                                              height: 67,
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ),
                            const SizedBox(width: 14),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'ORD 10786420007',
                                  style: textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'Placed on 1st june, 2024',
                                  style: textTheme.bodyMedium?.copyWith(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.extraLightGray,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Roasted and Salted Cashews',
                                            style:
                                                textTheme.bodyMedium?.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            'x 3',
                                            style:
                                                textTheme.bodyMedium?.copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          if (index == 1)
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                height: 14,
                                                width: 45,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: AppColors.darkGray,
                                                  borderRadius:
                                                      BorderRadius.circular(22),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'View More',
                                                      style: textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                        color: AppColors.white,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 6,
                                                      ),
                                                    ),
                                                    const Icon(
                                                      Icons.keyboard_arrow_down,
                                                      size: 8,
                                                      color: AppColors.white,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 8,
                                ),
                                child: Divider(
                                  indent: 0,
                                  endIndent: 0,
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  SvgImage.money,
                                  height: 18,
                                  fit: BoxFit.fitHeight,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'Total Amount- ',
                                  style: textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  '780',
                                  style: textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  SvgImage.wallet,
                                  height: 18,
                                  fit: BoxFit.fitHeight,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'Payment Type- ',
                                  style: textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  'Cash',
                                  style: textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Divider(
                          indent: 0,
                          endIndent: 0,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            SvgPicture.asset(
                              SvgImage.truck,
                              height: 18,
                              fit: BoxFit.fitHeight,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Processing',
                              style: textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 25,
                                    child: ElevatedButton(
                                      onPressed: () => context.router
                                          .navigate(const TrackOrderRoute()),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(26.0),
                                        ),
                                      ),
                                      child: Text(
                                        'Track your Order',
                                        style: textTheme.labelSmall?.copyWith(
                                          color: AppColors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                    width: 88,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(26.0),
                                        ),
                                      ),
                                      child: Text(
                                        'Reorder',
                                        style: textTheme.labelSmall?.copyWith(
                                          color: AppColors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
