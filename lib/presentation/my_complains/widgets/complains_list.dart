import 'package:flutter/material.dart';
import 'package:planit/presentation/my_complains/widgets/complain_list_item.dart';

class ComplainsList extends StatelessWidget {
  const ComplainsList({super.key});

  @override
  Widget build(BuildContext context) {
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
        itemCount: 10,
        itemBuilder: (context, index) => const ComplainListItem(),
      ),
    );
  }
}
