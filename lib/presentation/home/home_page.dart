import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/utils/responsive.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomePageMobile(),
      tablet: HomePageMobile(),
      web: HomePageWeb(),
    );
  }
}

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class HomePageWeb extends StatefulWidget {
  const HomePageWeb({super.key});

  @override
  State<HomePageWeb> createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
