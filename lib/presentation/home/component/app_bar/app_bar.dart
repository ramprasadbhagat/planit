import 'package:flutter/material.dart';
import 'package:planit/utils/responsive.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileHomeBar(),
      tablet: MobileHomeBar(),
      web: WebAppBar(),
    );
  }
}

class MobileHomeBar extends StatelessWidget {
  const MobileHomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [],
    );
  }
}

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [SearchBar(), ButtonBar()],
    );
  }
}
