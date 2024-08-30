import 'dart:math';

import 'package:flutter/material.dart';

class BlogTagItem extends StatefulWidget {
  final String text;
  final EdgeInsets? margin;
  final bool big;

  const BlogTagItem({
    super.key,
    required this.text,
    this.big = false,
    this.margin,
  });

  @override
  State<BlogTagItem> createState() => _BlogTagItemState();
}

class _BlogTagItemState extends State<BlogTagItem> {
  late final Color color;

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
  void initState() {
    super.initState();
    color = getRandomColor();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      padding:
          EdgeInsets.symmetric(horizontal: 8, vertical: widget.big ? 6 : 2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(3)),
      ),
      child: Text(
        widget.text,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: widget.big ? 13 : 10,
            ),
      ),
    );
  }
}
