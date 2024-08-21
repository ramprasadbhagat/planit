import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/blog_details/blog_details_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AddCommentBottomSheet extends StatelessWidget {
  final String blogId;
  const AddCommentBottomSheet({super.key, required this.blogId});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BlogDetailsBloc, BlogDetailsState>(
      listener: (context, state) {
        state.apiFailureOrSuccessOption.fold(() => null, (a) {
          a.fold((l) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(l.failureMessage),
                backgroundColor: AppColors.red,
              ),
            );
          }, (r) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Comment Added!'),
                backgroundColor: AppColors.green,
              ),
            );
          });
        });
        context.router.maybePop();
      },
      listenWhen: (previous, current) =>
          previous.isSubmitingComment != current.isSubmitingComment &&
          !current.isSubmitingComment,
      buildWhen: (previous, current) =>
          previous.isSubmitingComment != current.isSubmitingComment,
      builder: (context, state) {
        return Skeletonizer(
          enabled: state.isSubmitingComment,
          child: CommonBottomSheet(
            child: Padding(
              padding: EdgeInsets.only(
                top: 100,
                left: 40,
                right: 40,
                bottom: (MediaQuery.of(context).viewInsets.bottom + 100),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Share your comment',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    maxLines: 4,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    onChanged: (value) => context
                        .read<BlogDetailsBloc>()
                        .add(BlogDetailsEvent.onCommentInputChange(value)),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(45),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(11)),
                      ),
                    ),
                    onPressed: () => context
                        .read<BlogDetailsBloc>()
                        .add(BlogDetailsEvent.addCommentClicked(blogId)),
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
