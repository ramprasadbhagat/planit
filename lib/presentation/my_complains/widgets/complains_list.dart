import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/my_complain/complain_bloc.dart';
import 'package:planit/presentation/my_complains/widgets/complain_list_item.dart';

class ComplainsList extends StatelessWidget {
  const ComplainsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComplainBloc, ComplainState>(
      builder: (context, state) {
        if (state.isFetching) {
          return const Expanded(
            child: Center(
              child: SizedBox(
                height: 40,
                width: 40,
                child: CircularProgressIndicator(),
              ),
            ),
          );
        } else if (state.complains.isEmpty) {
          return const Expanded(
            child: Center(
              child: Text('No Complains found'),
            ),
          );
        }
        return Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 20,
            ),
            separatorBuilder: (__, _) => const SizedBox(
              height: 10,
            ),
            itemCount: state.complains.length,
            itemBuilder: (context, index) => ComplainListItem(
              complain: state.complains[index],
            ),
          ),
        );
      },
    );
  }
}
