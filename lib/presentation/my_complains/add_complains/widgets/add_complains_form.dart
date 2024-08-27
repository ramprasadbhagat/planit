import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/my_complain/complain_bloc.dart';
import 'package:planit/application/order/order_bloc.dart';
import 'package:planit/presentation/theme/colors.dart';

class AddComplainsForm extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController descriptionController;
  const AddComplainsForm({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.descriptionController,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: BlocBuilder<ComplainBloc, ComplainState>(
        builder: (context, state) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      hintText: 'Name',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                    value: state.orderId,
                    items: context
                        .read<OrderBloc>()
                        .state
                        .getOrderIdList
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ),
                        )
                        .toList(),
                    onChanged: (v) {
                      context
                          .read<ComplainBloc>()
                          .add(ComplainEvent.selectOrderId(value: v!));
                    },
                    icon: const Icon(Icons.keyboard_arrow_down),
                    decoration: const InputDecoration(
                      labelText: 'Order Id',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: descriptionController,
                    decoration: const InputDecoration(
                      hintText: 'Type description here',
                    ),
                    maxLines: 5,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 180,
                    child: ElevatedButton(
                      onPressed: () {
                        context
                            .read<ComplainBloc>()
                            .add(const ComplainEvent.selectImage());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.articleCategoryColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.image),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            state.image != null
                                ? 'replace image'
                                : 'select image',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  state.image != null
                      ? Stack(
                          clipBehavior: Clip.none,
                          fit: StackFit.loose,
                          alignment: Alignment.topRight,
                          children: [
                            kIsWeb
                                ? Image.network(
                                    state.image!.path,
                                    fit: BoxFit.cover,
                                  )
                                : Image.file(
                                    File(state.image!.path),
                                    height: 150,
                                    fit: BoxFit.fitHeight,
                                  ),
                            Positioned(
                              top: -20,
                              right: -20,
                              child: IconButton(
                                onPressed: () {
                                  context
                                      .read<ComplainBloc>()
                                      .add(const ComplainEvent.removeImage());
                                },
                                icon: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.red,
                                  ),
                                  child: const Icon(
                                    Icons.close,
                                    size: 12,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
