import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HighLightsPage extends StatefulWidget {
  const HighLightsPage({super.key});

  @override
  State<HighLightsPage> createState() => _HighLightsPageState();
}

class _HighLightsPageState extends State<HighLightsPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: false,
        title: Text(
          'HighLights',
          style: textTheme.labelLarge,
        ),
      ),
    );
  }
}
