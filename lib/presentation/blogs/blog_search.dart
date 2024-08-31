import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/blog_search/blog_search_bloc.dart';
import 'package:planit/presentation/blogs/widgets/blog_item_card.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/home/shop/widgets/shimmer_items.dart';
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
              TextFormField(
                onChanged: (e) => context
                    .read<BlogSearchBloc>()
                    .add(BlogSearchEvent.searchStringChange(e)),
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    size: 24,
                    color: Colors.grey,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 0),
                ),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${state.totalItemCount} results found',
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.textBlack,
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          if (state.isLoading && state.blogs.isEmpty)
                            const ShimmerItem(),
                          if (state.blogs.isEmpty)
                            const Expanded(child: NoData())
                          else
                            Expanded(
                              child: ListView.builder(
                                itemCount: state.blogs.length,
                                itemBuilder: (context, index) =>
                                    BlogItemCard(blog: state.blogs[index]),
                              ),
                            ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
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
