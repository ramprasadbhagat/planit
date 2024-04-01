import 'package:flutter/material.dart';

enum Breakpoint {
  mobile,
  tablet,
  web,
}

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget web;
  const Responsive({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.web,
  });

  static bool isLargerThan(
    BuildContext context,
    Breakpoint breakpoint,
  ) {
    switch (breakpoint) {
      case Breakpoint.mobile:
        return MediaQuery.of(context).size.width > 480;
      case Breakpoint.tablet:
        return MediaQuery.of(context).size.width > 600;
      case Breakpoint.web:
        return MediaQuery.of(context).size.width > 1050;
      default:
        return false;
    }
  }

  static bool isSmallerThan(
    BuildContext context,
    Breakpoint breakpoint,
  ) {
    switch (breakpoint) {
      case Breakpoint.mobile:
        return MediaQuery.of(context).size.width <= 480;
      case Breakpoint.tablet:
        return MediaQuery.of(context).size.width <= 600;
      case Breakpoint.web:
        return MediaQuery.of(context).size.width <= 1050;
      default:
        return false;
    }
  }

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 480;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width > 480;

  static bool isWeb(BuildContext context) =>
      MediaQuery.of(context).size.width > 800;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (size.width >= 800) {
      return web;
    } else if (size.width > 480) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
