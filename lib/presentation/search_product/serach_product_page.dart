import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/search_product/search_product_bloc.dart';
import 'package:planit/domain/product/entities/product.dart';

import 'package:planit/presentation/category/widgets/product_card.dart';
import 'package:planit/presentation/core/common_search_bar.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/core/scrollable_grid_view.dart';
import 'package:planit/presentation/home/shop/widgets/cart_banner.dart';
import 'package:planit/presentation/theme/colors.dart';

@RoutePage()
class SearchProductPage extends StatefulWidget {
  const SearchProductPage({super.key});

  @override
  State<SearchProductPage> createState() => _SearchProductPageState();
}

class _SearchProductPageState extends State<SearchProductPage> {
  // final searchController = TextEditingController();
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: false,
        title: Text(
          'Products',
          style: textTheme.labelLarge,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonSearchBar(
                    hintText: 'Search products...',
                    onSearchChanged: (e) {
                      context.read<SearchProductBloc>().add(
                            SearchProductEvent.fetchProduct(
                              searchKey: e,
                            ),
                          );
                    },
                    onSearchSubmitted: (e) {
                      context.read<SearchProductBloc>().add(
                            SearchProductEvent.fetchProduct(
                              searchKey: e,
                            ),
                          );
                    },
                    onClear: () {
                      context.read<SearchProductBloc>().add(
                            const SearchProductEvent.fetchProduct(
                              searchKey: '',
                            ),
                          );
                    },
                  ),

                  // Material(
                  //   elevation: 2,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(8.0),
                  //   ),
                  //   child: TextFormField(
                  //     onChanged: (e) {
                  //       _bouncer.run(() {
                  //         context.read<SearchProductBloc>().add(
                  //               SearchProductEvent.fetchProduct(
                  //                 searchKey: e,
                  //                 isScrolling: false,
                  //               ),
                  //             );
                  //       });
                  //     },
                  //     controller: searchController,
                  //     decoration: const InputDecoration(
                  //       focusedBorder: borderDecoration,
                  //       enabledBorder: borderDecoration,
                  //       errorBorder: borderDecoration,
                  //       disabledBorder: borderDecoration,
                  //       border: borderDecoration,
                  //       hintText: 'Search',
                  //       prefixIcon: Icon(
                  //         Icons.search_rounded,
                  //         size: 24,
                  //         color: Colors.grey,
                  //       ),
                  //       contentPadding: EdgeInsets.symmetric(horizontal: 0),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: BlocBuilder<SearchProductBloc, SearchProductState>(
                      buildWhen: (previous, current) =>
                          previous.isFetching != current.isFetching,
                      builder: (context, state) {
                        return ScrollableGridView<Product>(
                          noRecordFoundWidget: const NoData(),
                          scrollPhysics: const AlwaysScrollableScrollPhysics(),
                          header: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                              '${state.products.length} products found',
                              style: textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          isLoading: state.isFetching,
                          items: state.products,
                          onRefresh: () =>
                              context.read<SearchProductBloc>().add(
                                    const SearchProductEvent.fetchProduct(
                                      searchKey: '',
                                    ),
                                  ),
                          onLoadingMore: () =>
                              context.read<SearchProductBloc>().add(
                                    const SearchProductEvent.onLoadMore(),
                                  ),
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          itemBuilder: (
                            BuildContext context,
                            int index,
                            Product item,
                          ) =>
                              ProductCard(
                            product: state.products.elementAt(index),
                          ),
                        );
                      },
                    ),
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
