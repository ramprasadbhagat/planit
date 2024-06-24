import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/my_complains/add_complains/widgets/add_complains_form.dart';

@RoutePage()
class AddComplainsPage extends StatelessWidget {
  const AddComplainsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 30,
        title: const Text('Add Complains'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: [
          Text(
            'Add complains',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const AddComplainsForm(),
          ElevatedButton(onPressed: () {}, child: const Text('Submit')),
        ],
      ),
    );
  }
}
