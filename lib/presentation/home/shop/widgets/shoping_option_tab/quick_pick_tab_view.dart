import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/quick_picks/quick_picks_bloc.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/core/section_title.dart';
import 'package:planit/presentation/home/shop/widgets/shoping_option_tab/quick_pick_cart.dart';
import 'package:planit/presentation/home/shop/widgets/shimmer_items.dart';

class QuickPickTabView extends StatelessWidget {
  const QuickPickTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: 'Your quick picks'),
        const SizedBox(
          height: 10,
        ),
        BlocBuilder<QuickPicksBloc, QuickPicksState>(
          builder: (context, state) {
            if (state.isFetching) {
              return const Padding(
                padding: EdgeInsets.all(15.0),
                child: Center(child: ShimmerItem()),
              );
            } else if (state.quicksPickProducts.isEmpty) {
              return const NoData();
            }
            return Wrap(
              runSpacing: 6,
              spacing: 1,
              children: state.quicksPickProducts
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
