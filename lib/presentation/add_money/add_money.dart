import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/add_money/add_money_bloc.dart';
import 'package:planit/locator.dart';
import 'package:planit/presentation/add_money/widgets/add_money_form.dart';
import 'package:planit/presentation/theme/colors.dart';

@RoutePage()
class AddMoneyPage extends StatelessWidget {
  final AddMoneyBloc bloc;
  AddMoneyPage({super.key}) : bloc = locator<AddMoneyBloc>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocProvider.value(
      value: bloc..add(const AddMoneyEvent.init()),
      child: Scaffold(
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
            BlocBuilder<AddMoneyBloc, AddMoneyState>(
              buildWhen: (previous, current) =>
                  previous.isLoading != current.isLoading,
              builder: (context, state) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.black,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  onPressed: state.isLoading
                      ? null
                      : () {
                          context
                              .read<AddMoneyBloc>()
                              .add(const AddMoneyEvent.addMoneyClicked());
                        },
                  child: Text(
                    'Add money',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: AppColors.white,
                        ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
