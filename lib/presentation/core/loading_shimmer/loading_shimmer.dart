import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

import 'package:shimmer/shimmer.dart';
part 'with_child.dart';
part 'tile.dart';

enum LoadingShimmerType {
  withChild,
  tile,
  circular,
}

class LoadingShimmer extends StatelessWidget {
  const LoadingShimmer._({
    super.key,
    required this.type,
    this.child,
    this.enabled,
    this.line,
    this.center = true,
  });
  final LoadingShimmerType type;
  final Widget? child;
  final bool? enabled;
  final int? line;
  final bool center;

  factory LoadingShimmer.withChild({
    required Widget child,
    bool enabled = true,
    bool center = true,
  }) {
    return LoadingShimmer._(
      type: LoadingShimmerType.withChild,
      enabled: enabled,
      center: center,
      child: child,
    );
  }

  factory LoadingShimmer.tile({
    bool enabled = true,
    int line = 1,
  }) {
    return LoadingShimmer._(
      type: LoadingShimmerType.tile,
      enabled: enabled,
      line: line,
    );
  }

  factory LoadingShimmer.circular() =>
      const LoadingShimmer._(type: LoadingShimmerType.circular);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case LoadingShimmerType.withChild:
        return _WithChild(
          enabled: enabled!,
          center: center,
          child: child!,
        );
      case LoadingShimmerType.tile:
        return _Tile(enabled: enabled!, line: line!);
      case LoadingShimmerType.circular:
        return const CircularProgressIndicator(
          color: AppColors.white,
        );
    }
  }
}
