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

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 100,
      ),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 4),
        child: InkWell(
          onTap: () {
            context.router.navigate(
              BlogDetailsRoute(
                blog: blog,
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child:
                      blog.blogImage.isEmpty || !blog.blogImage.first.isValid()
                          ? Image.asset(
                              PngImage.placeholder,
                              width: 80,
                              height: 72,
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
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minHeight: 65,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          blog.title.getValue(),
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  // spacing: 8,
                                  // runSpacing: 8,
                                  children: blog.blogTag
                                      .map(
                                        (e) => BlogTagItem(
                                          text: e,
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                        ),
                                      )
                                      .toList(),
                                ),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
