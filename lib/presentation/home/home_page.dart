import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/utils/responsive.dart';
import 'package:planit/presentation/home/home_page_mobile.dart';
import 'package:planit/presentation/home/home_page_web.dart';

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
