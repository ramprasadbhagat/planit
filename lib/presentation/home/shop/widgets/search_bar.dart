import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/search_product/search_product_bloc.dart';
import 'package:planit/presentation/router/router.gr.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    const borderDecoration = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide.none,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Material(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: TextField(
          onTap: () {
            context.read<SearchProductBloc>().add(
                  const SearchProductEvent.fetchProduct(
                    searchKey: '',
                    isScrolling: false,
                  ),
                );
            context.router.navigate(const SearchProductRoute());
          },
          readOnly: true,
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
    );
  }
}
