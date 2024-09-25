import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class Discount extends StatelessWidget {
  final double discountPercentage;
  final OfferType type;
  final double? width; //provide the actual width of the card
  final double? height; //provide the actual height of the card
  const Discount._({
    required this.discountPercentage,
    required this.type,
    this.height,
    this.width,
  });

  factory Discount.tag({required double discountPercentage}) => Discount._(
        discountPercentage: discountPercentage,
        type: OfferType.tag,
      );

  factory Discount.ribbon({
    required double discountPercentage,
    required double width, //provide the actual width of the card
    required double height, //provide the actual height of the card
  }) =>
      Discount._(
        discountPercentage: discountPercentage,
        type: OfferType.ribbon,
        width: width,
        height: height,
      );

  @override
  Widget build(BuildContext context) {
    return type == OfferType.ribbon
        ? _RibbonWidget(
            discountPercentage: discountPercentage,
            width: width ?? 0,
            height: height ?? 0,
          )
        : TagWidget(
            discountPercentage: discountPercentage,
          );
  }
}

class TagWidget extends StatelessWidget {
  final double discountPercentage;

  const TagWidget({super.key, required this.discountPercentage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 4),
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.green,
      ),
      child: Text(
        '$discountPercentage% OFF',
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: AppColors.white,
              fontSize: 10,
            ),
      ),
    );
  }
}

class _RibbonWidget extends StatelessWidget {
  final double discountPercentage;
  final double width; //provide the actual width of the card
  final double height; //provide the actual height of the card

  const _RibbonWidget({
    super.key,
    required this.discountPercentage,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: (8 / 170) * height,
      left: -(20 / 130) * width,
      child: Transform.rotate(
        angle: -0.785398,
        child: Container(
          width: (90 / 130) * width,
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
          child: Container(
            color: AppColors.green,
            padding: const EdgeInsets.all(2),
            child: Center(
              child: Text(
                '$discountPercentage% OFF',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.white,
                      fontSize: 9,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum OfferType { tag, ribbon }
