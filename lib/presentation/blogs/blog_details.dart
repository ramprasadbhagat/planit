import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:intl/intl.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/blog_details/blog_details_bloc.dart';
import 'package:planit/domain/blog/enitities/blog.dart';
import 'package:planit/domain/blog/enitities/blog_comments.dart';
import 'package:planit/locator.dart';
import 'package:planit/presentation/blogs/widgets/add_comment_bottom_sheet.dart';
import 'package:planit/presentation/blogs/widgets/blog_tag_item.dart';
import 'package:planit/presentation/core/custom_snackbar/custom_snackbar.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/string_constants.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:readmore/readmore.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:timeago/timeago.dart' as timeAgo;

@RoutePage()
class BlogDetailsPage extends StatelessWidget {
  final Blog blog;
  final BlogDetailsBloc bloc;
  BlogDetailsPage({super.key, required this.blog})
      : bloc = locator<BlogDetailsBloc>();

  String formatDateTime(DateTime dateTime) {
    // Get the day of the month with suffix (st, nd, rd, th)
    final day = DateFormat('d').format(dateTime);
    final daySuffix = getDaySuffix(dateTime.day);

    // Format the date
    final formattedDate = DateFormat('MMMM, y, EEEE').format(dateTime);

    return '$day$daySuffix $formattedDate';
  }

  String getDaySuffix(int day) {
    if (day >= 11 && day <= 13) {
      return 'th';
    }
    switch (day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final isUnAuth = context.read<AuthBloc>().state.isUnAuthenticated;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog'),
        centerTitle: false,
        leadingWidth: 30,
      ),
      body: BlocBuilder<BlogDetailsBloc, BlogDetailsState>(
        buildWhen: (previous, current) =>
            previous.isFetching != current.isFetching ||
            previous.isFetchingComments != current.isFetchingComments ||
            previous.viewAllComments != current.viewAllComments,
        bloc: bloc
          ..add(BlogDetailsEvent.fetch(blog, isUnAuth))
          ..add(BlogDetailsEvent.fetchComments(blog.id.getValue())),
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            children: [
              Skeletonizer(
                enabled: state.isFetching,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      clipBehavior: Clip.hardEdge,
                      margin: EdgeInsets.zero,
                      child: state.blog.blogImage.isEmpty
                          ? Image.asset(
                              PngImage.placeholder,
                              height: 196,
                              width: double.maxFinite,
                            )
                          : CachedNetworkImage(
                              imageUrl: state.blog.blogImage.first.getValue(),
                              height: 196,
                              width: double.maxFinite,
                              fit: BoxFit.cover,
                            ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(SvgImage.calendar),
                          Text.rich(
                            TextSpan(
                              text: '  Date: ',
                              children: [
                                TextSpan(
                                  text: formatDateTime(state.blog.createdAt),
                                  style: textTheme.bodySmall?.copyWith(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                              style: textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: double.maxFinite,
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount: state.blog.blogTag.length,
                        itemBuilder: (context, index) => BlogTagItem(
                          text: state.blog.blogTag[index],
                          big: true,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                      ),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  LikeButton(
                                    onTap: () {
                                      if (isUnAuth) {
                                        CustomSnackbar.showErrorMessage(
                                          context,
                                          StringConstant
                                              .pleaseLoginToLikeThisBlog,
                                        );

                                        return;
                                      }
                                      if (state.blog.like != null) {
                                        String text;

                                        if (!state.blog.like!) {
                                          text = StringConstant
                                              .youAlreadyDislikedThisBlog;
                                        } else {
                                          text = StringConstant
                                              .youAlreadyLikedThisBlog;
                                        }
                                        CustomSnackbar.showErrorMessage(
                                          context,
                                          text,
                                        );
                                        return;
                                      }

                                      bloc.add(
                                        BlogDetailsEvent.likeClicked(
                                          blog.id.getValue(),
                                        ),
                                      );
                                    },
                                    isActive: state.blog.like ?? false,
                                    isLike: true,
                                  ),
                                  Text(
                                    ' ${state.blog.likesCount.getValue()} Likes',
                                    style: textTheme.bodySmall?.copyWith(
                                      fontSize: 9,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Row(
                                children: [
                                  LikeButton(
                                    onTap: () {
                                      if (isUnAuth) {
                                        CustomSnackbar.showErrorMessage(
                                          context,
                                          StringConstant
                                              .pleaseLoginToDislikeThisBlog,
                                        );

                                        return;
                                      }

                                      if (state.blog.like != null) {
                                        String text;
                                        if (!state.blog.like!) {
                                          text = StringConstant
                                              .youAlreadyDislikedThisBlog;
                                        } else {
                                          text = StringConstant
                                              .youAlreadyLikedThisBlog;
                                        }

                                        CustomSnackbar.showErrorMessage(
                                          context,
                                          text,
                                        );
                                        return;
                                      }
                                      bloc.add(
                                        BlogDetailsEvent.dislikeClicked(
                                          blog.id.getValue(),
                                        ),
                                      );
                                    },
                                    isActive: state.blog.like == null
                                        ? false
                                        : !state.blog.like!,
                                    isLike: false,
                                  ),
                                  Text(
                                    ' ${state.blog.dislikeCount.getValue()} Dislikes',
                                    style: textTheme.bodySmall?.copyWith(
                                      fontSize: 9,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Material(
                            elevation: 5,
                            color: AppColors.white,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.share_rounded,
                                color: AppColors.black,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 30,
                      indent: 0,
                      endIndent: 0,
                    ),
                    Center(
                      child: Text(
                        state.blog.title.getOrDefaultValue(''),
                        style: textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    HtmlWidget(
                      state.blog.blogContent.getOrDefaultValue(''),
                      textStyle: const TextStyle(
                        color: AppColors.grey1,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        SvgImage.comments,
                        width: 18,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Comments',
                        style: textTheme.titleLarge,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Skeletonizer(
                    enabled: state.isFetchingComments,
                    child: Text(
                      '${state.blogComments.length} comments',
                      style: textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Skeletonizer(
                enabled: state.isFetchingComments,
                child: state.blogComments.isEmpty
                    ? const NoData(
                        message: 'No Comments Found',
                      )
                    : ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: state.blogComments
                            .take(state.viewAllComments ? 999 : 2)
                            .length,
                        itemBuilder: (context, index) => CommentListItem(
                          comment: state.blogComments[index],
                        ),
                      ),
              ),
              if (state.blogComments.isEmpty)
                const SizedBox(
                  height: 20,
                ),
              if (state.blogComments.isNotEmpty)
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      bloc.add(const BlogDetailsEvent.viewAllCommentClicked());
                    },
                    child: Text(
                      state.viewAllComments ? 'View less' : 'View all',
                      style: const TextStyle(
                        color: AppColors.black,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                      ),
                    ),
                  ),
                ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(11)),
                  ),
                ),
                onPressed: () {
                  if (context.read<AuthBloc>().state.isUnAuthenticated) {
                    CustomSnackbar.showErrorMessage(
                      context,
                      StringConstant.pleaseLoginToAddComments,
                    );
                    return;
                  }

                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (_) => BlocProvider<BlogDetailsBloc>.value(
                      value: bloc,
                      child: AddCommentBottomSheet(
                        blogId: blog.id.getValue(),
                      ),
                    ),
                  );
                },
                child: const Text('Add Your Comment'),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          );
        },
      ),
    );
  }
}

class LikeButton extends StatelessWidget {
  final bool isActive;
  final bool isLike;
  final VoidCallback? onTap;
  const LikeButton({
    super.key,
    required this.isActive,
    required this.isLike,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        elevation: 5,
        color: AppColors.white,
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(
            isLike
                ? isActive
                    ? Icons.thumb_up_alt
                    : Icons.thumb_up_alt_outlined
                : isActive
                    ? Icons.thumb_down_alt
                    : Icons.thumb_down_alt_outlined,
            color: AppColors.black,
            size: 20,
          ),
        ),
      ),
    );
  }
}

class CommentListItem extends StatelessWidget {
  final BlogComments comment;
  const CommentListItem({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: [
            Container(
              width: 43,
              height: 43,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 3, color: AppColors.grey2),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 4,
                    spreadRadius: 1,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Text(
                comment.userName.getOrDefaultValue('A').characters.first,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.grey2,
                    ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          comment.userName.getOrDefaultValue('User Name'),
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
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
                              comment.commentDate,
                            ),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                  ReadMoreText(
                    comment.comment.getValue(),
                    trimMode: TrimMode.Line,
                    trimLines: 2,
                    colorClickableText: AppColors.black,
                    trimCollapsedText: 'READ MORE',
                    trimExpandedText: 'READ LESS',
                    style: texttheme.bodySmall?.copyWith(
                      color: AppColors.textBlack,
                    ),
                    moreStyle: texttheme.bodySmall?.copyWith(
                      color: AppColors.textBlack,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
