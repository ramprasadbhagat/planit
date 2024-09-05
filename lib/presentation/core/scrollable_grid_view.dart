import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/responsive.dart';

class ScrollableGridView<T> extends StatefulWidget {
  final VoidCallback? onRefresh;
  final VoidCallback? onLoadingMore;
  final bool isLoading;
  final List<T> items;
  final Widget? noRecordFoundWidget;
  final Widget Function(BuildContext context, int index, T item) itemBuilder;
  final Widget header;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final double mainAxisExtent;
  final ScrollPhysics? scrollPhysics;

  const ScrollableGridView({
    super.key,
    required this.isLoading,
    required this.itemBuilder,
    required this.items,
    this.onRefresh,
    this.onLoadingMore,
    this.header = const SizedBox.shrink(),
    this.crossAxisSpacing = 12.0,
    this.mainAxisSpacing = 12.0,
    this.mainAxisExtent = 180.0,
    this.noRecordFoundWidget,
    this.scrollPhysics,
  });

  @override
  State<ScrollableGridView> createState() => _ScrollableGridViewState<T>();
}

class _ScrollableGridViewState<T> extends State<ScrollableGridView<T>> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (!widget.isLoading &&
        _scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
      widget.onLoadingMore?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.isLoading && widget.items.isEmpty
        ? const Center(
            child: CircularProgressIndicator(
              color: AppColors.black,
              strokeWidth: 3,
            ),
          )
        : RefreshIndicator(
            color: AppColors.black,
            onRefresh: () async => widget.onRefresh?.call(),
            child: CustomScrollView(
              physics: widget.scrollPhysics,
              // key: WidgetKeys.scrollList,
              controller: _scrollController,
              slivers: [
                SliverToBoxAdapter(
                  child: widget.header,
                ),
                widget.items.isEmpty && !widget.isLoading
                    ? SliverToBoxAdapter(
                        child: widget.noRecordFoundWidget,
                      )
                    : SliverGrid(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            final item = widget.items[index];

                            return widget.itemBuilder(context, index, item);
                          },
                          childCount: widget.items.length,
                        ),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              Responsive.isLargerThan(context, Breakpoint.web)
                                  ? 4
                                  : 2,
                          crossAxisSpacing: widget.crossAxisSpacing,
                          mainAxisSpacing: widget.mainAxisSpacing,
                          childAspectRatio: _getResponsiveAspectRatio(context),
                          mainAxisExtent: widget.mainAxisExtent,
                        ),
                      ),
                if (widget.isLoading)
                  const SliverToBoxAdapter(
                    // key: WidgetKeys.loadMoreLoader,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Colors.black,
                        strokeWidth: 3,
                      ),
                    ),
                  ),
              ],
            ),
          );
  }

  double _getResponsiveAspectRatio(BuildContext context) {
    if (Responsive.isLargerThan(context, Breakpoint.web)) {
      return 1 / 0.9;
    }
    return 1 / 1.8;
  }
}
