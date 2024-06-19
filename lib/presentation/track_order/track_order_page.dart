import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/presentation/track_order/widgets/tracker.dart';
import 'package:planit/presentation/track_order/widgets/tracker_header.dart';
import 'package:planit/utils/svg_image.dart';

@RoutePage()
class TrackOrderPage extends StatelessWidget {
  const TrackOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Track Order',
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const TrackerHeader(),
            const SizedBox(height: 10),
            const Divider(
              indent: 0,
              endIndent: 0,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                SvgPicture.asset(
                  SvgImage.calendar,
                  height: 12,
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(width: 4),
                Text(
                  'Estimated date of delivery :   ',
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                Text(
                  '30th April 2024',
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                SvgPicture.asset(
                  SvgImage.clock,
                  height: 12,
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(width: 4),
                Text(
                  'Estimated time of delivery :    ',
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                Text(
                  '7:20 - 8:30 am',
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                SvgPicture.asset(
                  SvgImage.money,
                  height: 12,
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(width: 4),
                Text(
                  'Payment Type : ',
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Cash on delivery',
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                SvgPicture.asset(
                  SvgImage.orderStatusIcon,
                  height: 12,
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(width: 4),
                Text(
                  'Order status :  ',
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                SvgPicture.asset(
                  SvgImage.truck,
                  height: 12,
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(width: 4),
                Text(
                  'Processing',
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TrackerTimeline(
              timeLineModel: [
                TimeLineModel(
                  status: Status.completed,
                  statusIcon: SvgImage.box,
                  title: 'Order Received',
                  subtitle: '28th April 2024 |  2 : 10 pm',
                ),
                TimeLineModel(
                  status: Status.completed,
                  statusIcon: SvgImage.roundArrowIcon,
                  title: 'Order in Process',
                  subtitle: '29th April 2024 |  12: 00 pm',
                ),
                TimeLineModel(
                  status: Status.processing,
                  statusIcon: SvgImage.truck,
                  title: 'Order Dispatched',
                  subtitle: 'Reach at Kankurgachi , Main Road',
                ),
                TimeLineModel(
                  status: Status.pending,
                  statusIcon: SvgImage.thumsupIcon,
                  title: 'Delivered Successfully',
                  subtitle: 'Not yet Delivered',
                  isLast: true,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cancel Order',
                          style: textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Cancel Order before its placed',
                          style: textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 33,
                      width: 89,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.redButton,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                        ),
                        child: Text(
                          'Cancel',
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
            ),
          ],
        ),
      ),
    );
  }
}
