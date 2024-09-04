import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/add_review/add_review_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/presentation/core/custom_snackbar/custom_snackbar.dart';
import 'package:planit/presentation/order/widgets/rating.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/string_constants.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ReviewOrderDialogBox extends StatelessWidget {
  final Order order;
  const ReviewOrderDialogBox({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.8,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        child: Scaffold(
          body: BlocConsumer<AddReviewBloc, AddReviewState>(
            listenWhen: (previous, current) =>
                previous.isFetching != current.isFetching &&
                !current.isFetching,
            buildWhen: (previous, current) =>
                previous.isFetching != current.isFetching,
            listener: (context, state) {
              state.apiFailureOrSuccessOption.fold(() {}, (a) {
                a.fold(
                  (l) {
                    CustomSnackbar.showErrorMessage(context, l.failureMessage);
                  },
                  (r) {
                    context.router.maybePop();
                    CustomSnackbar.showSuccessMessage(
                      context,
                      StringConstant.reviewAddedSuccessfully,
                    );
                  },
                );
              });
            },
            builder: (context, state) {
              return Skeletonizer(
                enabled: state.isFetching,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 40,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month,
                              size: 18,
                              color: AppColors.grey2,
                            ),
                            Text(
                              ' Order ID : ${order.id.getValue()} ',
                              style: textTheme.titleMedium?.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.timer_outlined,
                              size: 18,
                              color: AppColors.grey2,
                            ),
                            Text(
                              ' Delivered on : ${order.deliveryDate.getDisplayValue}',
                              style: textTheme.titleMedium?.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              PngImage.dollar,
                              height: 12,
                              width: 15,
                            ),
                            Text(
                              ' Price : ${order.getTotalPrice}   |   ${order.orderItem.length} Items ',
                              style: textTheme.titleMedium?.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          height: 60,
                          color: AppColors.lightGray,
                          indent: 0,
                          endIndent: 0,
                        ),
                        const Text(
                          'Rate your overall experience ?',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const StarRating(),
                        const SizedBox(
                          height: 30,
                        ),
                        Material(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          clipBehavior: Clip.hardEdge,
                          elevation: 5,
                          child: TextFormField(
                            onChanged: (value) =>
                                context.read<AddReviewBloc>().add(
                                      AddReviewEvent.onMessageChange(
                                        message: value,
                                      ),
                                    ),
                            textAlignVertical: TextAlignVertical.center,
                            maxLines: 4,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              fillColor: Colors.white,
                              hintText: 'Type Something',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (context.read<AddReviewBloc>().state.rating ==
                                0) {
                              CustomSnackbar.showErrorMessage(
                                context,
                                StringConstant.pleaseGiveAtLeastOneStar,
                              );
                              return;
                            }
                            context
                                .read<AddReviewBloc>()
                                .add(const AddReviewEvent.submitOrderReview());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.black,
                            minimumSize: const Size(330, 50),
                          ),
                          child: const Text('Submit'),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
