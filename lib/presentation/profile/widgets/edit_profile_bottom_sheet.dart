import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/core/custom_snackbar/custom_snackbar.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/string_constants.dart';

class EditProfileBottomSheet extends StatelessWidget {
  const EditProfileBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.8,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Edit Profile',
                      style: textTheme.labelSmall?.copyWith(
                        fontSize: 16,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 2,
                                  color: AppColors.extraLightGrey2,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Image.asset(
                              PngImage.generic('profile_pic.png'),
                              height: 100,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.extraLightGrey3,
                            ),
                            child: const Icon(
                              Icons.edit,
                              size: 14,
                              color: AppColors.grey1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      readOnly: true,
                      style: const TextStyle(
                        color: AppColors.grey2,
                      ),
                      controller: TextEditingController(text: 'Thomas Jones'),
                      decoration: const InputDecoration(
                        fillColor: AppColors.extraLightGrey3,
                        filled: true,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      readOnly: true,
                      style: const TextStyle(
                        color: AppColors.grey2,
                      ),
                      controller: TextEditingController(text: '9854636489'),
                      decoration: const InputDecoration(
                        fillColor: AppColors.extraLightGrey3,
                        filled: true,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      style: const TextStyle(
                        color: AppColors.black,
                      ),
                      controller:
                          TextEditingController(text: 'jonesthomas@gmail.com'),
                      decoration: const InputDecoration(),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: AppColors.lightGray2,
                thickness: 3,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 30,
                width: 160,
                child: ElevatedButton(
                  onPressed: () {
                    context.router.maybePop();
                    CustomSnackbar.showSuccessMessage(
                      context,
                      StringConstant.profileUpdatedSuccessfully,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26.0),
                    ),
                  ),
                  child: Text(
                    'Save Changes',
                    style:
                        textTheme.labelSmall?.copyWith(color: AppColors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
