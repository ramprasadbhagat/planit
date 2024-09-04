import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/add_review/add_review_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/order/entities/order_item.dart';
import 'package:planit/presentation/core/custom_snackbar/custom_snackbar.dart';
import 'package:planit/presentation/core/html_text.dart';
import 'package:planit/presentation/order/widgets/rating.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/string_constants.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ReviewDialogBox extends StatelessWidget {
  final OrderItem orderItem;
  const ReviewDialogBox({super.key, required this.orderItem});

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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            PngImage.orderItem1,
                            height: 80,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  orderItem.product.productName.getValue(),
                                  style: textTheme.labelSmall?.copyWith(
                                    fontSize: 18,
                                    color: AppColors.black,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: Text(
                                    orderItem.product.sku.displayLabel,
                                    style: textTheme.bodySmall?.copyWith(
                                      fontSize: 16,
                                      color: AppColors.grey2,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                HtmlText(
                                  orderItem
                                      .product.productDescription.displayLabel,
                                  style: textTheme.bodySmall?.copyWith(
                                    fontSize: 14,
                                    color: AppColors.grey2,
                                  ),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'What is your rate ?',
                        style: TextStyle(
                          fontSize: 25,
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
                            const BorderRadius.all(Radius.circular(12)),
                        elevation: 5,
                        clipBehavior: Clip.hardEdge,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          maxLines: 4,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            fillColor: Colors.white,
                            labelText: 'Type Something',
                            hintText: 'Type Something',
                            labelStyle: Theme.of(context)
                                .inputDecorationTheme
                                .hintStyle,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                          onChanged: (value) {
                            context.read<AddReviewBloc>().add(
                                  AddReviewEvent.onMessageChange(
                                    message: value,
                                  ),
                                );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (context.read<AddReviewBloc>().state.rating == 0) {
                            CustomSnackbar.showErrorMessage(
                              context,
                              StringConstant.pleaseGiveAtLeastOneStar,
                            );
                            return;
                          }
                          context
                              .read<AddReviewBloc>()
                              .add(const AddReviewEvent.submitProductReview());
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
              );
            },
          ),
        ),
      ),
    );
  }
}
