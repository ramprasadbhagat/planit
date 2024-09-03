import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/blog_search/blog_search_bloc.dart';
import 'package:planit/domain/blog/enitities/blog.dart';
import 'package:planit/presentation/blogs/widgets/blog_item_card.dart';
import 'package:planit/presentation/core/common_search_bar.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/core/scroll_list.dart';
import 'package:planit/presentation/theme/colors.dart';

@RoutePage()
class BlogSearchPage extends StatelessWidget {
  const BlogSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) {
        context.read<BlogSearchBloc>().add(const BlogSearchEvent.reset());
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: false,
          title: const Text(
            'Blogs',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonSearchBar(
                hintText: 'Search blogs...',
                onSearchChanged: (e) => context
                    .read<BlogSearchBloc>()
                    .add(BlogSearchEvent.searchStringChange(e)),
                onSearchSubmitted: (e) => context
                    .read<BlogSearchBloc>()
                    .add(BlogSearchEvent.searchStringChange(e)),
                onClear: () {
                  context
                      .read<BlogSearchBloc>()
                      .add(const BlogSearchEvent.reset());
                },
              ),
              const SizedBox(
                height: 10,
              ),
              NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  if (notification.metrics.axis == Axis.vertical) {
                    if (notification.metrics.pixels ==
                        notification.metrics.maxScrollExtent) {
                      context
                          .read<BlogSearchBloc>()
                          .add(const BlogSearchEvent.fetchMore());
                    }
                  }
                  return true;
                },
                child: BlocBuilder<BlogSearchBloc, BlogSearchState>(
                  builder: (context, state) {
                    return Expanded(
                      child: ScrollList<Blog>(
                        header: !state.isLoading && state.searchText.isNotEmpty
                            ? Text(
                                '${state.totalItemCount} results found',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.textBlack,
                                    ),
                              )
                            : const SizedBox.shrink(),
                        noRecordFoundWidget: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: NoData(
                            message: state.searchText.isEmpty
                                ? 'Discover blog posts by searching here'
                                : 'No Blogs found',
                          ),
                        ),
                        controller: ScrollController(),
                        isLoading: state.isLoading,
                        itemBuilder: (context, index, item) => BlogItemCard(
                          blog: state.blogs[index],
                        ),
                        items: state.blogs,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
