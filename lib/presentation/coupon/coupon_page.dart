import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planit/application/coupon/coupon_bloc.dart';
import 'package:planit/domain/core/debouncer.dart';
import 'package:planit/domain/core/error/error_utils.dart';
import 'package:planit/domain/coupon/entities/coupon.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/core/scroll_list.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';

@RoutePage()
class CouponListPage extends StatelessWidget {
  const CouponListPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              listenWhen: (previous, current) =>
                  previous.isApplying != current.isApplying &&
                  !current.isApplying,
              listener: (context, state) => {
                state.apiFailureOrSuccessOption.fold(
                  () {},
                  (either) => either.fold(
                    (failure) {
                      ErrorUtils.handleApiFailure(context, failure);
                    },
                    (success) {
                      context.router.maybePop();
                    },
                  ),
                ),
              },
              builder: (context, state) {
                return Expanded(
                  child: ScrollList<Coupon>(
                    noRecordFoundWidget: const Padding(
                      padding: EdgeInsets.only(
                        top: 25,
                      ),
                      child: NoData(
                        message: 'No coupons available',
                      ),
                    ),
                    controller: ScrollController(),
                    onRefresh: () => context
                        .read<CouponBloc>()
                        .add(const CouponEvent.fetch()),
                    onLoadingMore: () => {},
                    isLoading: state.isFetching,
                    itemBuilder: (context, index, item) => _CouponCard(
                      isCouponApplied:
                          state.appliedCoupon == state.couponList[index] &&
                              !state.isApplying,
                      coupon: item,
                    ),
                    items: state.searchCouponList.isEmpty
                        ? state.couponList
                        : state.searchCouponList,
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

class _CouponCard extends StatelessWidget {
  const _CouponCard({
    required this.coupon,
    required this.isCouponApplied,
  });
  final Coupon coupon;
  final bool isCouponApplied;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            SvgImage.coupon,
            height: 60,
            fit: BoxFit.fitHeight,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coupon.shortDescription,
                  maxLines: 1,
                  style: textTheme.bodyMedium?.copyWith(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Coupon Code: ${coupon.couponCode}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.bodyMedium?.copyWith(
                    color: AppColors.grey2,
                    fontSize: 12,
                  ),
                ),
                Text(
                  coupon.type == CouponType.fixedAmount
                      ? 'Save ₹${coupon.rate} on this order!'
                      : 'Get ${coupon.rate}% off on this order!',
                  style: textTheme.bodyMedium?.copyWith(
                    color: AppColors.green,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: isCouponApplied
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
                : Container(
                    color: AppColors.accentColor,
                    width: 70,
                    height: 24,
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<CouponBloc>().add(
                              CouponEvent.applyCoupon(
                                coupon: coupon,
                              ),
                            );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: AppColors.deepOrange,
                        maximumSize: const Size(330, 50),
                      ),
                      child: isCouponApplied
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
          ),
        ],
      ),
    );
  }
}
