import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/svg_image.dart';

class LocationPin extends StatelessWidget {
  const LocationPin({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Expanded(
          flex: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SvgPicture.asset(
                    SvgImage.locationPin,
                  ),
                  const SizedBox(width: 4.0),
                  Text(
                    'Delivering to 110017',
                    style:
                        textTheme.bodyMedium?.copyWith(color: AppColors.grey2),
                  ),
                ],
              ),
              Text(
                'Order within 30 mins for delivery by 6 pm on 24-03',
                style: textTheme.labelSmall,
              ),
              const SizedBox(width: 4.0),
            ],
          ),
        ),
        const Expanded(
          flex: 1,
          child: Icon(Icons.exit_to_app_rounded),
        ),
      ],
    );
  }
}
