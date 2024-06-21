import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/order_list/widgets/order_list_item.dart';
import 'package:planit/utils/png_image.dart';

@RoutePage()
class OrderListPage extends StatefulWidget {
  const OrderListPage({super.key});

  @override
  State<OrderListPage> createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {
  List<String> images = [
    PngImage.loginBackGround,
    PngImage.placeholder,
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order List',
          style: textTheme.labelLarge,
        ),
        leadingWidth: 25,
        centerTitle: false,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16,
          );
        },
        padding: const EdgeInsets.all(
          14,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return OrderListItem(
            index: index,
          );
        },
      ),
    );
  }
}
