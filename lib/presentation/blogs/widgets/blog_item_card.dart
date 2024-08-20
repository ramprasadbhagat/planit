import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:planit/domain/blog/enitities/blog.dart';
import 'package:planit/presentation/blogs/widgets/blog_tag_item.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:timeago/timeago.dart' as timeAgo;

class BlogItemCard extends StatelessWidget {
  final Blog blog;
  const BlogItemCard({super.key, required this.blog});

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
    return Card(
      child: InkWell(
        onTap: () {
          context.router.navigate(const BlogDetailsRoute());
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: blog.blogImage.isEmpty || !blog.blogImage.first.isValid()
                    ? Image.asset(
                        PngImage.placeholder,
                      )
                    : CachedNetworkImage(
                        imageUrl: blog.blogImage.first.getValue(),
                        width: 80,
                        height: 72,
                        fit: BoxFit.fill,
                        errorWidget: (context, url, error) => Image.asset(
                          PngImage.placeholder,
                        ),
                      ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      blog.title.getValue(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: blog.blogTag
                                .map(
                                  (e) => BlogTagItem(
                                    text: e,
                                    backgroundColor: getRandomColor(),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              size: 7,
                              color: AppColors.extraLightGrey2,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              timeAgo.format(
                                blog.updatedAt,
                              ),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
