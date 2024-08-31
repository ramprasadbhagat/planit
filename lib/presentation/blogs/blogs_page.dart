import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/blog/blog_bloc.dart';
import 'package:planit/presentation/blogs/widgets/blog_item_card.dart';
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
            Text(
              'Read All Blogs',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Expanded(
              child: NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  if (notification.metrics.axis == Axis.vertical) {
                    if (notification.metrics.pixels ==
                        notification.metrics.maxScrollExtent) {
                      context
                          .read<BlogBloc>()
                          .add(const BlogEvent.fetchBlogs());
                    }
                  }
                  return true;
                },
                child: BlocBuilder<BlogBloc, BlogState>(
                  builder: (context, state) {
                    return Skeletonizer(
                      enabled: state.blogs.isEmpty && state.isFetching,
                      child: ListView.builder(
                        itemCount: state.blogs.length,
                        itemBuilder: (context, index) => BlogItemCard(
                          blog: state.blogs[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
