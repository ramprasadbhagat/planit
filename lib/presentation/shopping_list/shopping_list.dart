import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/wishlist/wishlist_bloc.dart';
import 'package:planit/presentation/home/shop/widgets/cart_banner.dart';
import 'package:planit/presentation/shopping_list/widget/empty_shopping_list.dart';
import 'package:planit/presentation/shopping_list/widget/shopping_list_item_card.dart';
import 'package:planit/presentation/theme/colors.dart';

@RoutePage()
class ShoppingListPage extends StatefulWidget {
  const ShoppingListPage({super.key});

  @override
  State<ShoppingListPage> createState() => _ShoppingListPageState();
}

class _ShoppingListPageState extends State<ShoppingListPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shopping List',
          style: textTheme.labelLarge,
        ),
        leadingWidth: 20,
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          BlocBuilder<WishlistBloc, WishlistState>(
            builder: (context, state) {
              if (state.isFetching) {
                return Container();
              } else if (state.isWishlistEmpty) {
                return const EmptyShoppingList();
              }
              return Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Select All',
                              style: textTheme.labelMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.grey4,
                              ),
                            ),
                            Checkbox(
                              value: isChecked,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                              side: MaterialStateBorderSide.resolveWith(
                                (states) => const BorderSide(
                                  width: 1.0,
                                  color: Colors.black,
                                ),
                              ),
                              fillColor:
                                  MaterialStateProperty.all(Colors.white),
                              checkColor: Colors.black,
                              activeColor: Colors.black,
                              autofocus: true,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(state.getAllWishList.length,
                              (index) {
                            return ShoppingListItemCard(
                              item: state.getAllWishList[index],
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          const CartBanner(),
        ],
      ),
    );
  }
}
