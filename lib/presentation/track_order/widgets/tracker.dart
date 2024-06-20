import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';

enum Status { pending, processing, completed }

class TrackerTimeline extends StatelessWidget {
  const TrackerTimeline({super.key, required this.timeLineModel});

  final List<TimeLineModel> timeLineModel;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: timeLineModel.length,
      itemBuilder: (context, index) {
        final model = timeLineModel[index];
        var fabIcon = SvgImage.fabOutlinedFullBlackIcon;
        if (model.status == Status.pending) {
          fabIcon = SvgImage.fabOutlinedFullGrayIcon;
        } else if (model.status == Status.processing) {
          fabIcon = SvgImage.fabOutlineIcon;
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Transform.translate(
                    offset: const Offset(0, 0),
                    child: Stack(
                      children: [
                        SvgPicture.asset(fabIcon),
                        Positioned(
                          left: 10,
                          right: 10,
                          bottom: 0,
                          top: 0,
                          child: SvgPicture.asset(
                            model.statusIcon,
                            height: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title,
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      model.subtitle,
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 9,
                        color: AppColors.grey3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            if (!model.isLast)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 18),
                height: 46,
                width: 3,
                color: model.status == Status.completed
                    ? AppColors.black
                    : AppColors.lightGray,
              ),
          ],
        );
      },
    );
  }
}

class TimeLineModel {
  final Status status;
  final String statusIcon;
  final String title;
  final String subtitle;
  final bool isLast;

  TimeLineModel({
    required this.status,
    required this.statusIcon,
    required this.title,
    required this.subtitle,
    this.isLast = false,
  });
}
