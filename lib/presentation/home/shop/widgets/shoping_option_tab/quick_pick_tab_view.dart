import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/quick_picks/quick_picks_bloc.dart';
import 'package:planit/presentation/core/section_title.dart';
import 'package:planit/presentation/home/shop/widgets/shoping_option_tab/quick_pick_cart.dart';

class QuickPickTabView extends StatelessWidget {
  const QuickPickTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: 'Your quick picks'),
        const SizedBox(
          height: 10,
        ),
        BlocBuilder<QuickPicksBloc, QuickPicksState>(
          buildWhen: (previous, current) =>
              previous.products != current.products,
          builder: (context, state) {
            if (state.products.isEmpty) const Text('Not Available');
            return Wrap(
              runSpacing: 6,
              spacing: 1,
              children: state.products
                  .take(6)
                  .map(
                    (e) => QuickPickCard(
                      item: e,
                    ),
                  )
                  .toList(),
            );
          },
        ),
      ],
    );
  }
}
