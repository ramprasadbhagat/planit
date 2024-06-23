import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/quick_picks/quick_picks_bloc.dart';
import 'package:planit/presentation/category/widgets/product_card.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/home/shop/widgets/cart_banner.dart';
import 'package:planit/presentation/quick_picks/widget/search_textfeld_widget.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/responsive.dart';

@RoutePage()
class QuickPicksPage extends StatefulWidget {
  const QuickPicksPage({super.key});

  @override
  State<QuickPicksPage> createState() => _QuickPicksPageState();
}

class _QuickPicksPageState extends State<QuickPicksPage> {
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: false,
        title: Text(
          'Quick Picks',
          style: textTheme.labelLarge,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Column(
                children: [
                  SearchTextField(
                    textEditingController: searchController,
                    onChange: (e) {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<QuickPicksBloc, QuickPicksState>(
                    builder: (context, state) {
                      if (state.isFetching) {
                        return Container();
                      } else if (state.quicksPickProducts.isEmpty) {
                        return const NoData();
                      }
                      return Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${state.quicksPickProducts.length} products found',
                              style: textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.textBlack,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: GridView.builder(
                                // controller: scrollController,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:
                                      Responsive.isWeb(context) ? 5 : 2,
                                  mainAxisExtent: 180,
                                  crossAxisSpacing: 10.0,
                                  mainAxisSpacing: 8.0,
                                ),
                                itemCount: state.quicksPickProducts.length,
                                shrinkWrap: true,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      bottom: 5,
                                    ),
                                    child: ProductCard(
                                      product: state.quicksPickProducts
                                          .elementAt(index)
                                          .toProduct,
                                    ),
                                  );
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            // state.isScrolling
                            //     ? const Padding(
                            //         padding: EdgeInsets.only(bottom: 20),
                            //         child: Center(
                            //           child: CircularProgressIndicator(),
                            //         ),
                            //       )
                            //     : const SizedBox.shrink(),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          const CartBanner(),
        ],
      ),
    );
  }
}
