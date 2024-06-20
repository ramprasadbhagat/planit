import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/application/product_detail/product_detail_bloc.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/locator.dart';
import 'package:planit/presentation/category/widgets/add_to_cart_bottom_sheet/similar_product_section.dart';
import 'package:planit/presentation/core/add_to_cart_button.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class AddToCartBottomSheet extends StatelessWidget {
  final Product product;
  const AddToCartBottomSheet({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    Future<void> showErrorAlert() async {
      await showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return Dialog(
            child: SizedBox(
              height: 150,
              width: 250,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: [
                    Transform.translate(
                      offset: const Offset(0, -30),
                      child: Container(
                        height: 55,
                        width: 55,
                        alignment: Alignment.center,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.grey2,
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          PngImage.location,
                          height: 35,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Text(
                      'Enter your delivery pincode to add this item to your cart and check availability.',
                      style: textTheme.labelSmall?.copyWith(
                        color: const Color(0xff424446),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 80,
                      height: 28,
                      child: ElevatedButton(
                        onPressed: () {
                          context.router.maybePop();
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: AppColors.black,
                          maximumSize: const Size(330, 50),
                        ),
                        child: Text(
                          'OK',
                          style: textTheme.labelSmall?.copyWith(
                            color: AppColors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    }

    return BlocProvider(
      create: (context) => locator<ProductDetailBloc>()
        ..add(ProductDetailEvent.fetch(product.productId)),
      child: SafeArea(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.8,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: ListView(
                    children: [
                      product.productImages.isEmpty
                          ? SizedBox(
                              height: 300,
                              child: Center(
                                child: Image.asset(
                                  PngImage.placeholder,
                                  height: 150,
                                ),
                              ),
                            )
                          : FlutterCarousel(
                              options: CarouselOptions(
                                height: 300,
                                viewportFraction: 1,
                                showIndicator: true,
                                enableInfiniteScroll: true,
                                slideIndicator: const CircularSlideIndicator(
                                  itemSpacing: 10,
                                  indicatorRadius: 4,
                                  currentIndicatorColor: AppColors.lightGray,
                                  indicatorBackgroundColor:
                                      AppColors.extraLightGray,
                                ),
                                indicatorMargin: 16,
                              ),
                              items: product.productImages
                                  .map(
                                    (e) => CachedNetworkImage(
                                      errorWidget: (context, url, error) =>
                                          Image.asset(PngImage.placeholder),
                                      imageUrl: e,
                                    ),
                                  )
                                  .toList(),
                            ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        product.name,
                        style: textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      BlocBuilder<ProductDetailBloc, ProductDetailState>(
                        buildWhen: (previous, current) =>
                            previous.productDetail != current.productDetail,
                        builder: (context, state) {
                          return Text(
                            state.productDetail.productDescription,
                            style: textTheme.bodySmall?.copyWith(fontSize: 10),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      UnitList(
                        product: product,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SimilarProductSection(
                        product: product,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 70,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.attributeItem,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'MRP ₹${product.getPriceValue}',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          '(Inclusicve of all taxes)',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (context.read<AuthBloc>().state ==
                            const AuthState.unauthenticated()) {
                          context.read<CartBloc>().add(
                                CartEvent.addToCartLocal(
                                  product: product,
                                ),
                              );
                          context.router.maybePop();
                          const snackBar = SnackBar(
                            content: Text('Item added to cart'),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        } else {
                          if (context
                              .read<PincodeBloc>()
                              .state
                              .pincode
                              .isEmpty) {
                            showErrorAlert();
                          } else {
                            context.read<CartBloc>().add(
                                  CartEvent.addToCart(
                                    product: product,
                                    quantity: 1,
                                  ),
                                );
                            context.router.maybePop();
                            const snackBar = SnackBar(
                              content: Text('Item added to cart'),
                            );

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26.0),
                        ),
                      ),
                      child: Text(
                        'Add to cart',
                        style: textTheme.labelSmall
                            ?.copyWith(color: AppColors.white),
                      ),
                    ),
                    AddToCartButton.fromBottomSheet(
                      product: product,
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     context.read<CartBloc>().add(
                    //           CartEvent.addToCart(
                    //             product: product,
                    //             quantity: 1,
                    //           ),
                    //         );
                    //     context.router.maybePop();
                    //     const snackBar = SnackBar(
                    //       content: Text('Item added to cart'),
                    //     );

                    //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: AppColors.black,
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(26.0),
                    //     ),
                    //   ),
                    //   child: Text(
                    //     'Add to cart',
                    //     style: textTheme.labelSmall
                    //         ?.copyWith(color: AppColors.white),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UnitList extends StatelessWidget {
  final Product product;

  const UnitList({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Unit',
          style: textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 70,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: 1,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            itemBuilder: (context, index) => Unit(product: product),
          ),
        ),
      ],
    );
  }
}

class Unit extends StatelessWidget {
  final Product product;

  const Unit({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.extraLightGray,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: const Color(0xff333333), width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (product.attributeItem.isNotEmpty) ...[
            Text(
              product.attributeItem,
              style: textTheme.bodySmall?.copyWith(fontSize: 10),
            ),
            const SizedBox(
              height: 2,
            ),
          ],
          Text(
            '₹ ${product.getPriceValue}',
            style: textTheme.bodySmall?.copyWith(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
