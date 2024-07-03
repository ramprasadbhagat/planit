import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/search_product/search_product_bloc.dart';
import 'package:planit/domain/core/debouncer.dart';
import 'package:planit/presentation/category/widgets/product_card.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/home/shop/widgets/cart_banner.dart';
import 'package:planit/presentation/home/shop/widgets/shimmer_items.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/responsive.dart';

@RoutePage()
class SearchProductPage extends StatefulWidget {
  const SearchProductPage({super.key});

  @override
  State<SearchProductPage> createState() => _SearchProductPageState();
}

class _SearchProductPageState extends State<SearchProductPage> {
  final _bouncer = Debouncer(milliseconds: 700);
  final searchController = TextEditingController();
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController()..addListener(_scrollListener);
    super.initState();
  }

  void _scrollListener() {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      final bloc = BlocProvider.of<SearchProductBloc>(context);
      bloc.add(
        SearchProductEvent.fetchProduct(
          searchKey: searchController.text,
          isScrolling: true,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    const borderDecoration = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide.none,
    );
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
                  Material(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextFormField(
                      onChanged: (e) {
                        _bouncer.run(() {
                          context.read<SearchProductBloc>().add(
                                SearchProductEvent.fetchProduct(
                                  searchKey: e,
                                  isScrolling: false,
                                ),
                              );
                        });
                      },
                      controller: searchController,
                      decoration: const InputDecoration(
                        focusedBorder: borderDecoration,
                        enabledBorder: borderDecoration,
                        errorBorder: borderDecoration,
                        disabledBorder: borderDecoration,
                        border: borderDecoration,
                        hintText: 'Search',
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          size: 24,
                          color: Colors.grey,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<SearchProductBloc, SearchProductState>(
                    builder: (context, state) {
                      if (state.isFetching) {
                        return const ShimmerItem();
                      } else if (state.isProductListEmpty) {
                        return const Expanded(child: NoData());
                      }
                      return Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${state.products.length} products found',
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
                                controller: scrollController,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:
                                      Responsive.isWeb(context) ? 5 : 2,
                                  mainAxisExtent: 180,
                                  crossAxisSpacing: 10.0,
                                  mainAxisSpacing: 8.0,
                                ),
                                itemCount: state.products.length,
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
                                      product: state.products.elementAt(index),
                                    ),
                                  );
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            state.isScrolling
                                ? const Padding(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  )
                                : const SizedBox.shrink(),
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

  @override
  void dispose() {
    searchController.clear();
    scrollController.removeListener(_scrollListener);
    super.dispose();
  }
}
