import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planit/application/blog/blog_bloc.dart';
import 'package:planit/domain/blog/enitities/blog.dart';
import 'package:planit/presentation/blogs/widgets/blog_item_card.dart';
import 'package:planit/presentation/blogs/widgets/blogs_filter_bottom_sheet.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/core/scroll_list.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class BlogsPage extends StatelessWidget {
  const BlogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: TextScaler.noScaling,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: BlocBuilder<BlogBloc, BlogState>(
                buildWhen: (previous, current) =>
                    previous.isFetching != current.isFetching,
                builder: (context, state) {
                  return ScrollList<Blog>(
                    header: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Read All Blogs',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) => const CommonBottomSheet(
                                  child: BlogsFilterBottomSheet(),
                                ),
                                isScrollControlled: true,
                              );
                            },
                            child: BlocBuilder<BlogBloc, BlogState>(
                              buildWhen: (previous, current) =>
                                  previous.isFetching != current.isFetching,
                              builder: (context, state) {
                                return Badge(
                                  isLabelVisible:
                                      state.tempFilterList.isNotEmpty,
                                  label: Text(
                                    '${state.tempFilterList.length}',
                                  ),
                                  textStyle: const TextStyle(fontSize: 10),
                                  child: Material(
                                    color: AppColors.transparent,
                                    elevation: 0,
                                    shape: const RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: AppColors.grey4,
                                      ),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 8,
                                      ),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(SvgImage.filterIcon),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            'Filter by',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall
                                                ?.copyWith(
                                                  fontSize: 12,
                                                  color: AppColors.grey4,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    noRecordFoundWidget: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: NoData(),
                    ),
                    controller: ScrollController(),
                    onRefresh: () {
                      final blogBloc = context.read<BlogBloc>();
                      blogBloc.add(const BlogEvent.clearAllFilterClicked());
                      blogBloc.add(const BlogEvent.fetchBlogs());
                    },
                    onLoadingMore: () => context
                        .read<BlogBloc>()
                        .add(const BlogEvent.loadMoreBlogs()),
                    isLoading: state.isFetching,
                    itemBuilder: (context, index, item) => BlogItemCard(
                      blog: state.blogs[index],
                    ),
                    items: state.blogs,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
