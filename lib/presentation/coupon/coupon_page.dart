import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planit/application/coupon/coupon_bloc.dart';
import 'package:planit/domain/core/debouncer.dart';
import 'package:planit/domain/coupon/entities/coupon.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';

@RoutePage()
class CouponListPage extends StatelessWidget {
  const CouponListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final bouncer = Debouncer(milliseconds: 700);
    final controller = TextEditingController(text: '');
    const borderDecoration = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide.none,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coupons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Search a coupon and apply to get discount'),
            const SizedBox(
              height: 6,
            ),
            Material(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextFormField(
                controller: controller,
                onChanged: (e) {
                  bouncer.run(() {
                    context.read<CouponBloc>().add(
                          CouponEvent.couponSearch(
                            couponCode: e.trim(),
                          ),
                        );
                  });
                },
                decoration: const InputDecoration(
                  focusedBorder: borderDecoration,
                  enabledBorder: borderDecoration,
                  errorBorder: borderDecoration,
                  disabledBorder: borderDecoration,
                  border: borderDecoration,
                  hintText: 'Enter Coupon Code',
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    size: 24,
                    color: Colors.grey,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 0),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            BlocConsumer<CouponBloc, CouponState>(
              listener: (context, state) => context.router.maybePop(),
              listenWhen: (previous, current) =>
                  previous.isApplying != current.isApplying &&
                  !current.isApplying,
              builder: (context, state) {
                if (controller.text.isEmpty && state.searchCouponList.isEmpty) {
                  return const SizedBox();
                } else if (state.searchCouponList.isEmpty) {
                  return Expanded(
                    child: Center(
                      child: Text(
                        'No coupons available with this coupon code',
                        style: textTheme.labelMedium
                            ?.copyWith(color: AppColors.grey2),
                      ),
                    ),
                  );
                }
                return Expanded(
                  child: ListView.builder(
                    itemCount: state.searchCouponList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 12,
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
                                  'Coupon Code: ${state.couponList[index].couponCode}',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: AppColors.grey2,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  state.couponList[index].type ==
                                          CouponType.fixedAmount
                                      ? 'Save ₹${state.couponList[index].rate} on this order!'
                                      : 'Get ${state.couponList[index].rate}% off on this order!',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: AppColors.green,
                                    fontSize: 14,
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
