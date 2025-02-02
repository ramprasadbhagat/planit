import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/core/coming_soon/coming_soon_widget.dart';

@RoutePage()
class TalkToUsPage extends StatelessWidget {
  const TalkToUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text(
          'Talk To Us',
          style: textTheme.labelLarge,
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ComingSoon(),
          ],
        ),
      ),
    );
  }
}
