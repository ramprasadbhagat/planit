import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/add_money/widgets/add_money_form.dart';
import 'package:planit/presentation/add_money/widgets/add_money_success_dialog.dart';
import 'package:planit/presentation/theme/colors.dart';

@RoutePage()
class AddMoneyPage extends StatelessWidget {
  const AddMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 30,
        title: const Text('Add money'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: [
          Text(
            'Add money to wallet',
            style: textTheme.labelLarge,
          ),
          const AddMoneyForm(),
          const SizedBox(
            height: 13,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.black,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
            ),
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (_) => const AddMoneySuccessDialog(),
              );
            },
            child: Text(
              'Add money',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: AppColors.white,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
