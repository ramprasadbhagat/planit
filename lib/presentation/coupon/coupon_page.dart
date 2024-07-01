import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planit/application/coupon/coupon_bloc.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';

@RoutePage()
class CouponListPage extends StatelessWidget {
  const CouponListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coupons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Select a coupon to get discount'),
            BlocBuilder<CouponBloc, CouponState>(
              builder: (context, state) {
                if (state.couponList.isEmpty) {
                  return const Text('No coupons available');
                }
                return Expanded(
                  child: ListView.builder(
                    itemCount: state.couponList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 6,
                        ),
                        margin: const EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: const [
                            BoxShadow(
                              color: AppColors.extraLightGrey2,
                              spreadRadius: 1,
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              SvgImage.coupon,
                              height: 60,
                              fit: BoxFit.fitHeight,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.couponList[index].shortDescription,
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: AppColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Coupon Code:\n${state.couponList[index].couponCode}',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: AppColors.grey2,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  'Save ₹${state.couponList[index].amount} on this order!',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: AppColors.green,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            state.appliedCoupon == state.couponList[index] &&
                                    !state.isApplying
                                ? Container(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      right: 8,
                                      top: 2,
                                      bottom: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: AppColors.greenIconColor,
                                    ),
                                    child: Text(
                                      'Applied',
                                      style: textTheme.bodyMedium?.copyWith(
                                        color: AppColors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  )
                                : SizedBox(
                                    width: 70,
                                    height: 24,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        context.read<CouponBloc>().add(
                                              CouponEvent.applyCoupon(
                                                coupon: state.couponList
                                                    .elementAt(index),
                                              ),
                                            );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: const StadiumBorder(),
                                        backgroundColor: AppColors.deepOrange,
                                        maximumSize: const Size(330, 50),
                                      ),
                                      child: state.appliedCoupon ==
                                                  state.couponList[index] &&
                                              state.isApplying
                                          ? const SizedBox(
                                              height: 18,
                                              width: 18,
                                              child: CircularProgressIndicator(
                                                strokeWidth: 2.5,
                                                color: AppColors.white,
                                              ),
                                            )
                                          : const Text('Apply'),
                                    ),
                                  ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
