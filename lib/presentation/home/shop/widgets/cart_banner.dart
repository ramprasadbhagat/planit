import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/presentation/cart/cart_page.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/svg_image.dart';

class CartBanner extends StatelessWidget {
  const CartBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<CartBloc, CartState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 10,
                right: 16,
                left: 16,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.lightGray,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: 50,
                decoration: const BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                  children: [
                    Text(
                      '${state.totalItem} items | \$ ${state.totalPrice}',
                      style: textTheme.bodySmall?.copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 4,
                      ),
                      decoration: const BoxDecoration(
                        color: AppColors.grey2,
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Text(
                        '\$ 16 saved',
                        style:
                            textTheme.bodySmall?.copyWith(color: Colors.white),
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () =>
                          context.router.navigate(const CartRoute()),
                      child: Text(
                        'View Cart',
                        style:
                            textTheme.bodySmall?.copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(22, -22),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.lightGray,
                          blurRadius: 5,
                          offset: Offset(0, -4),
                        ),
                      ],
                    ),
                    child: Transform.translate(
                      offset: const Offset(0, 0),
                      child: Stack(
                        children: [
                          SvgPicture.asset(SvgImage.fabOutlineIcon),
                          Positioned(
                            left: 10,
                            right: 10,
                            bottom: 0,
                            top: 0,
                            child: Image.asset(
                              PngImage.planitLoginLogo,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Add Items Worth Rs. 120 and Unlock ',
                      style: textTheme.bodySmall?.copyWith(fontSize: 10),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Free Delivery',
                          style: textTheme.bodySmall?.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
