import 'dart:math';

import 'package:flutter/material.dart';

class BlogTagItem extends StatelessWidget {
  final String text;

  final bool big;

  const BlogTagItem({
    super.key,
    required this.text,
    this.big = false,
  });

  Color getRandomColor() {
    final colors = [
      const Color(0xffAEFF99),
      const Color(0xffF99D42),
      const Color(0xff9DB7FB),
      const Color(0xffFFB4B4),
      const Color(0xffFFCE50),
      const Color.fromRGBO(255, 206, 80, 0.62),
    ];

    final random = Random();
    return colors[random.nextInt(colors.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: big ? 6 : 2),
      decoration: BoxDecoration(
        color: getRandomColor(),
        borderRadius: const BorderRadius.all(Radius.circular(3)),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: big ? 13 : 10,
            ),
      ),
    );
  }
}
