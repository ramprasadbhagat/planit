import 'package:flutter/material.dart';

class LocationPin extends StatelessWidget {
  const LocationPin({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            const Icon(
              Icons.location_on,
              size: 18,
            ),
            const SizedBox(width: 4.0),
            Text(
              'Delivering to110017',
              style: textTheme.bodyMedium,
            ),
          ],
        ),
        Text(
          'Order within 30 mins for delivery by 24-03-2024',
          style: textTheme.labelSmall,
        ),
        const SizedBox(width: 4.0),
      ],
    );
  }
}
