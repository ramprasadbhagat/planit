import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/utils/widget_keys.dart';

@RoutePage()
class ReadPage extends StatelessWidget {
  const ReadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      key: WidgetKeys.readPage,
      body: Center(
        child: Text('read'),
      ),
    );
  }
}
