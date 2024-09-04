import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class ScrollList<T> extends StatefulWidget {
  final VoidCallback? onRefresh;
  final VoidCallback? onLoadingMore;
  final bool isLoading;
  final List<T> items;
  final Widget noRecordFoundWidget;
  final Widget header;
  final ScrollController? controller;
  final Widget Function(BuildContext context, int index, T item) itemBuilder;
  final bool dismissOnDrag;
  const ScrollList({
    super.key,
    required this.isLoading,
    required this.itemBuilder,
    required this.items,
    required this.noRecordFoundWidget,
    this.controller,
    this.header = const SizedBox.shrink(),
    this.onRefresh,
    this.onLoadingMore,
    this.dismissOnDrag = false,
  });

  @override
  State<ScrollList<T>> createState() => _ScrollListState<T>();
}

class _ScrollListState<T> extends State<ScrollList<T>> {
  late ScrollController _controller;

  @override
  void initState() {
    _controller = widget.controller ?? ScrollController();
    _controller.addListener(
      () {
        if ((_controller.position.pixels >=
                _controller.position.maxScrollExtent) &&
            widget.items.isNotEmpty) {
          widget.onLoadingMore?.call();
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    if (_controller.hasClients) {
      _controller.dispose();
    }
    super.dispose();
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
            color: Colors.black,
            onRefresh: () async => widget.onRefresh?.call(),
            child: CustomScrollView(
              // key: WidgetKeys.scrollList,
              controller: _controller,
              keyboardDismissBehavior: widget.dismissOnDrag
                  ? ScrollViewKeyboardDismissBehavior.onDrag
                  : ScrollViewKeyboardDismissBehavior.manual,
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: widget.header,
                ),
                widget.items.isEmpty && !widget.isLoading
                    ? SliverToBoxAdapter(
                        child: widget.noRecordFoundWidget,
                      )
                    : SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            final item = widget.items[index];

                            return widget.itemBuilder(context, index, item);
                          },
                          childCount: widget.items.length,
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
}
