part of 'loading_shimmer.dart';

class _WithChild extends StatelessWidget {
  const _WithChild({
    required this.child,
    required this.enabled,
    this.center = true,
  });
  final Widget child;
  final bool enabled;
  final bool center;

  @override
  Widget build(BuildContext context) {
    final widget = !enabled
        ? child
        : Shimmer.fromColors(
            baseColor: AppColors.lightGray,
            highlightColor: AppColors.white,
            enabled: true,
            child: child,
          );

    return center ? Center(child: widget) : widget;
  }
}
