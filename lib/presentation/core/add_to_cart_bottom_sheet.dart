import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/application/product_detail/product_detail_bloc.dart';
import 'package:planit/application/wishlist/wishlist_bloc.dart';
import 'package:planit/domain/inventory/entities/inventory.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/entities/product_detail.dart';
import 'package:planit/domain/product/value/value_objects.dart';
import 'package:planit/locator.dart';
import 'package:planit/presentation/category/widgets/add_to_cart_bottom_sheet/similar_product_section.dart';
import 'package:planit/presentation/category/widgets/product_card.dart';
import 'package:planit/presentation/core/add_to_cart_button.dart';
import 'package:planit/presentation/core/discount_widget/discount_widget.dart';
import 'package:planit/presentation/core/no_pincode_error_dialog.dart';
import 'package:planit/presentation/shopping_list/widget/item_count_widget.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AddToCartBottomSheet extends StatelessWidget {
  final String productId;
  final String? attributeItemId;
  const AddToCartBottomSheet({
    super.key,
    required this.productId,
    this.attributeItemId,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocProvider(
      create: (_) => locator<ProductDetailBloc>()
        ..add(
          ProductDetailEvent.fetch(
            ProductId(productId),
            attributeItemId: attributeItemId,
          ),
        ),
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
                                            fit: BoxFit.fill,
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
                              height: 15,
                            ),
                            Row(
                              children: [
                                if (state.stockInfo.isNotEmpty) ...[
                                  SvgPicture.asset(
                                    state.stockInfo,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                ],
                                Expanded(
                                  child: Text(
                                    state.product.name,
                                    style: textTheme.titleLarge?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                AddToWishlistButton(
                                  product: state.product.toProduct(
                                    state.selectedInventory,
                                  ),
                                ),
                              ],
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
                                state.selectedInventory.itemWeight,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: !state.isOOS
                                      ? AppColors.textBlack
                                      : AppColors.grey4,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'MRP ₹${state.selectedInventory.finalPrice}',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: !state.isOOS
                                          ? AppColors.textBlack
                                          : AppColors.grey4,
                                    ),
                                  ),
                                  if (state
                                      .selectedInventory.isDiscountApplied) ...[
                                    Text(
                                      state.selectedInventory.listPrice
                                          .toString(),
                                      style: textTheme.bodySmall!.copyWith(
                                        decoration: TextDecoration.lineThrough,
                                        color: AppColors.lightGray,
                                        fontSize: 13,
                                      ),
                                    ),
                                    Discount.tag(
                                      discountPercentage: state
                                          .selectedInventory.discountPercentage,
                                    ),
                                  ],
                                ],
                              ),
                              Text(
                                '(Inclusicve of all taxes)',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: state.selectedInventory.quantity > 0
                                      ? AppColors.textBlack
                                      : AppColors.grey4,
                                ),
                              ),
                            ],
                          ),
                          AddToCartButton.fromBottomSheet(
                            product: state.product
                                .toProduct(state.selectedInventory),
                            onTap: !state.isOOS
                                ? () async {
                                    if (context.read<AuthBloc>().state ==
                                        const AuthState.unauthenticated()) {
                                      context.read<CartBloc>().add(
                                            CartEvent.addToCartLocal(
                                              product: state.product.toProduct(
                                                state.selectedInventory,
                                              ),
                                              quantity: 1,
                                            ),
                                          );
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
                                                product:
                                                    state.product.toProduct(
                                                  state.selectedInventory,
                                                ),
                                                quantity: 1,
                                              ),
                                            );
                                      }
                                    }
                                  }
                                : null,
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

class AddToWishlistButton extends StatelessWidget {
  final Product product;
  const AddToWishlistButton({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishlistBloc, WishlistState>(
      builder: (context, state) {
        final item = state.getwishlistProduct(product);
        if (item == null) {
          return AddToListButton(product: product);
        }
        return ItemCountWidget(
          item: item,
        );
      },
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
          style: textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 70,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: product.inventoryList.length,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            itemBuilder: (context, index) =>
                Unit(inventory: product.inventoryList[index]),
          ),
        ),
      ],
    );
  }
}

class Unit extends StatelessWidget {
  final Inventory inventory;

  const Unit({
    super.key,
    required this.inventory,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      buildWhen: (previous, current) =>
          previous.selectedInventory != current.selectedInventory,
      builder: (context, state) {
        final isSelected = state.selectedInventory == inventory;
        final isOutOfStock = state.isOOS;

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          clipBehavior: Clip.antiAlias,
          width: 100,
          decoration: BoxDecoration(
            color: isOutOfStock ? AppColors.extraLightGray : AppColors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: isSelected
                ? Border.all(
                    color: AppColors.textBlack,
                    width: 1,
                  )
                : null,
            boxShadow: isOutOfStock
                ? null
                : const [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 2,
                      color: AppColors.extraLightGray,
                    ),
                  ],
          ),
          child: InkWell(
            onTap: () {
              context.read<ProductDetailBloc>().add(
                    ProductDetailEvent.changeSelectedAttribute(
                      inventory,
                    ),
                  );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (inventory.itemWeight.isNotEmpty) ...[
                  Text(
                    inventory.itemWeight,
                    style: textTheme.bodySmall?.copyWith(fontSize: 10),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                ],
                Text(
                  state.isOOS ? 'Out of stock' : '₹ ${inventory.finalPrice}',
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
