import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/utils/widget_keys.dart';

@RoutePage()
class PlanPage extends StatelessWidget {
  const PlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      key: WidgetKeys.planPage,
      body: Center(
        child: Text('Read'),
      ),
    );
  }
}
