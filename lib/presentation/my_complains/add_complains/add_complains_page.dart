import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/my_complain/complain_bloc.dart';
import 'package:planit/application/user/user_bloc.dart';
import 'package:planit/presentation/my_complains/add_complains/widgets/add_complains_form.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class AddComplainsPage extends StatelessWidget {
  const AddComplainsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userProfileState = context.read<UserProfileBloc>().state;
    final nameController =
        TextEditingController(text: userProfileState.user.fullName.getValue());
    final emailController = TextEditingController(
      text: userProfileState.user.emailAddress.getValue(),
    );
    final descriptionController = TextEditingController(
      text: '',
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 30,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              context
                  .read<ComplainBloc>()
                  .add(const ComplainEvent.removeImage());
              context
                  .read<ComplainBloc>()
                  .add(const ComplainEvent.removeOrderId());
              context.router.maybePop();
            },
          ),
        ),
        title: const Text('Add Complains'),
      ),
      body: BlocConsumer<ComplainBloc, ComplainState>(
        listener: (context, state) {
          const snackBar = SnackBar(
            content: Text('Complain Added Successfully'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          context.router.maybePop();
        },
        listenWhen: (previous, current) =>
            current.complains.length > previous.complains.length,
        builder: (context, state) {
          return Skeletonizer(
            enabled: state.isFetching,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              children: [
                Text(
                  'Add complains',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                AddComplainsForm(
                  nameController: nameController,
                  emailController: emailController,
                  descriptionController: descriptionController,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (state.orderId == null) {
                      const snackBar = SnackBar(
                        backgroundColor: AppColors.grey3,
                        content: Text('please select orderId'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else {
                      if (descriptionController.text.isEmpty) {
                        const snackBar = SnackBar(
                          backgroundColor: AppColors.grey3,
                          content: Text('Add description of your complain'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      } else {
                        context.read<ComplainBloc>().add(
                              ComplainEvent.addComplain(
                                name: nameController.text,
                                email: emailController.text,
                                orderId: state.orderId!,
                                complainContent: descriptionController.text,
                                file: state.image,
                              ),
                            );
                      }
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
