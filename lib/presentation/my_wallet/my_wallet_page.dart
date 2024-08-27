import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:planit/application/wallet/wallet_bloc.dart';
import 'package:planit/presentation/my_wallet/widget/add_money_button.dart';
import 'package:planit/presentation/my_wallet/widget/transaction_history.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class MyWalletPage extends StatelessWidget {
  const MyWalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 25,
        centerTitle: false,
        title: const Text(
          'My wallet',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        'Wallet Balance',
                        style: textTheme.labelMedium,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            SvgImage.currencyIcon,
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          BlocBuilder<WalletBloc, WalletState>(
                            builder: (context, state) {
                              return Skeletonizer(
                                enabled: state.isLoading,
                                child: Text(
                                  NumberFormat.compact().format(state.balance),
                                  style: textTheme.labelLarge?.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const AddMoneyButton(),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TransactionHistoryList(),
          ],
        ),
      ),
    );
  }
}
