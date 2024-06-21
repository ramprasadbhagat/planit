import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/my_complains/widgets/complains_list.dart';
import 'package:planit/presentation/theme/colors.dart';

@RoutePage()
class MyComplainsPage extends StatelessWidget {
  const MyComplainsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 25,
        title: const Text('My complains'),
        centerTitle: false,
      ),
      bottomNavigationBar: Material(
        elevation: 10,
        color: AppColors.whiteBgCard,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Add Complain'),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              'Current Complaints',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const ComplainsList(),
        ],
      ),
    );
  }
}
