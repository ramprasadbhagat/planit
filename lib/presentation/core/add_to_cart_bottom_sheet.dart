import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/application/product_detail/product_detail_bloc.dart';
import 'package:planit/domain/product/entities/product_detail.dart';
import 'package:planit/domain/product/value/value_objects.dart';
import 'package:planit/locator.dart';
import 'package:planit/presentation/category/widgets/add_to_cart_bottom_sheet/similar_product_section.dart';
import 'package:planit/presentation/core/add_to_cart_button.dart';
import 'package:planit/presentation/core/no_pincode_error_dialog.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AddToCartBottomSheet extends StatelessWidget {
  final String productId;
  const AddToCartBottomSheet({
    super.key,
    required this.productId,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocProvider(
      create: (_) => locator<ProductDetailBloc>()
        ..add(ProductDetailEvent.fetch(ProductId(productId))),
      child: BlocBuilder<ProductDetailBloc, ProductDetailState>(
        builder: (context, state) {
          return Skeletonizer(
            enabled: state.isFetching,
            child: SafeArea(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.8,
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                        child: ListView(
                          children: [
                            state.product.productImages.isEmpty
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
                                      slideIndicator:
                                          const CircularSlideIndicator(
                                        itemSpacing: 10,
                                        indicatorRadius: 4,
                                        currentIndicatorColor:
                                            AppColors.lightGray,
                                        indicatorBackgroundColor:
                                            AppColors.extraLightGray,
                                      ),
                                      indicatorMargin: 16,
                                    ),
                                    items: state.product.productImages
                                        .map(
                                          (e) => CachedNetworkImage(
                                            errorWidget:
                                                (context, url, error) =>
                                                    Image.asset(
                                              PngImage.placeholder,
                                            ),
                                            imageUrl: e,
                                          ),
                                        )
                                        .toList(),
                                  ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              state.product.name,
                              style: textTheme.labelLarge?.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            HtmlWidget(
                              state.product.productDescription.getValue(),
                              customStylesBuilder: (element) {
                                if (element.localName == 'p') {
                                  return {
                                    'font-size': '12px',
                                  };
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            UnitList(
                              product: state.product,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SimilarProductSection(
                              productId: productId,
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
                                state
                                    .selectedProductAttribute.attributeItemValue
                                    .getValue(),
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'MRP ₹${state.selectedProductAttribute.price}',
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
                          AddToCartButton.fromBottomSheet(
                            product: state.product
                                .toProduct(state.selectedProductAttribute),
                            onTap: () async {
                              if (context.read<AuthBloc>().state ==
                                  const AuthState.unauthenticated()) {
                                context.read<CartBloc>().add(
                                      CartEvent.addToCartLocal(
                                        product: state.product.toProduct(
                                          state.selectedProductAttribute,
                                        ),
                                        quantity: 1,
                                      ),
                                    );

                                const snackBar = SnackBar(
                                  content: Text('Item added to cart'),
                                );

                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              } else {
                                if (context
                                    .read<PincodeBloc>()
                                    .state
                                    .pincode
                                    .isEmpty) {
                                  await showDialog<void>(
                                    context: context,
                                    barrierDismissible:
                                        false, // user must tap button!
                                    builder: (BuildContext context) {
                                      return const NoPincodeErrorDialog();
                                    },
                                  );
                                } else {
                                  context.read<CartBloc>().add(
                                        CartEvent.addToCart(
                                          product: state.product.toProduct(
                                            state.selectedProductAttribute,
                                          ),
                                          quantity: 1,
                                        ),
                                      );

                                  const snackBar = SnackBar(
                                    content: Text('Item added to cart'),
                                  );

                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class UnitList extends StatelessWidget {
  final ProductDetail product;

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
            itemCount: product.attribute.length,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            itemBuilder: (context, index) =>
                Unit(productAttribute: product.attribute[index]),
          ),
        ),
      ],
    );
  }
}

class Unit extends StatelessWidget {
  final ProductAttribute productAttribute;

  const Unit({
    super.key,
    required this.productAttribute,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      buildWhen: (previous, current) =>
          previous.selectedProductAttribute != current.selectedProductAttribute,
      builder: (context, state) {
        final isSelected = state.selectedProductAttribute == productAttribute;
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: AppColors.extraLightGray,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: isSelected
                ? Border.all(
                    color: AppColors.textBlack,
                    width: 1,
                  )
                : null,
          ),
          child: InkWell(
            onTap: () {
              context.read<ProductDetailBloc>().add(
                    ProductDetailEvent.changeSelectedAttribute(
                      productAttribute,
                    ),
                  );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (productAttribute.attributeItemValue.isValid()) ...[
                  Text(
                    productAttribute.attributeItemValue.getValue(),
                    style: textTheme.bodySmall?.copyWith(fontSize: 10),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                ],
                Text(
                  productAttribute.quantity > 0
                      ? '₹ ${productAttribute.price}'
                      : 'Out of stock',
                  style: textTheme.bodySmall?.copyWith(fontSize: 10),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
