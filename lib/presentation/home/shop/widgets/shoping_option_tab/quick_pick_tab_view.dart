import 'package:flutter/material.dart';
import 'package:planit/presentation/core/section_title.dart';
import 'package:planit/presentation/home/shop/widgets/shoping_option_tab/quick_pick_cart.dart';
import 'package:planit/presentation/home/shop/widgets/shoping_option_tab/shoping_option_tab.dart';

class QuickPickTabView extends StatelessWidget {
  const QuickPickTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(title: 'Your quick picks'),
        const SizedBox(
          height: 10,
        ),
        Wrap(
          runSpacing: 6,
          spacing: 1,
          children: quickPickList
              .map(
                (e) => QuickPickCard(
                  item: e,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
