import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planit/application/address_book/address_book_bloc.dart';
import 'package:planit/application/user/user_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/presentation/address_book/widget/address_book.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class UserProfilePage extends StatelessWidget {
  final bool isFirstLogin;
  final bool fromCheckoutPage;
  const UserProfilePage({
    super.key,
    this.isFirstLogin = false,
    this.fromCheckoutPage = false,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          isFirstLogin || fromCheckoutPage
              ? 'Complete your profile'
              : 'Profile',
          style: textTheme.labelLarge,
        ),
        leadingWidth: 20,
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: isFirstLogin
            ? null
            : IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: AppColors.lightGrey,
                ),
                onPressed: () => context.router.maybePop(),
              ),
        actions: [
          if (isFirstLogin)
            TextButton(
              onPressed: () => context.router.navigate(const HomeRoute()),
              child: Text('Skip for now', style: textTheme.labelSmall),
            ),
          if (fromCheckoutPage) const CheckoutContinueButton(),
        ],
      ),
      body: const Column(
        children: [
          ProfileInformationSection(),
          Expanded(child: AddressBooks()),
        ],
      ),
    );
  }
}

class CheckoutContinueButton extends StatelessWidget {
  const CheckoutContinueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isProfileCompleted = context.select<UserProfileBloc, bool>(
      (value) => value.state.user.isValid,
    );
    final hasValidAddress = context.select<AddressBookBloc, bool>(
      (value) => value.state.selectedAddress.isNotEmpty,
    );
    return TextButton(
      onPressed: () {
        if (!isProfileCompleted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Please complete your personal Information.'),
              backgroundColor: AppColors.red,
            ),
          );
          return;
        }

        if (!hasValidAddress) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Please add a default address.'),
              backgroundColor: AppColors.red,
            ),
          );
          return;
        }

        context.router.navigate(const CheckoutRoute());
      },
      child: Text('Continue', style: Theme.of(context).textTheme.labelSmall),
    );
  }
}

class ProfileInformationSection extends StatelessWidget {
  const ProfileInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: BlocConsumer<UserProfileBloc, UserProfileState>(
        listenWhen: (previous, current) =>
            previous.isSubmitting != current.isSubmitting &&
            !current.isSubmitting,
        listener: (context, state) {
          state.apiFailureOrSuccessOption.fold(
            () {
              const snackBar = SnackBar(
                content: Text('Profile updated successfully'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            (either) => either.fold(
              (failure) {
                final snackBar = SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(failure.failureMessage),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              (_) {},
            ),
          );
        },
        builder: (context, state) {
          return Form(
            autovalidateMode: state.showErrorMessage
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Personal Information',
                      style: textTheme.titleMedium?.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Checkbox(
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return AppColors.green;
                        }
                        return AppColors.grey4;
                      }),
                      value: state.isProfileCompleted,
                      onChanged: null,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Skeletonizer(
                  enabled: state.isFetching || state.isSubmitting,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 188, 186, 186),
                          offset: Offset(0.0, 1.0),
                          blurRadius: 0.8,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (!state.isEditMode)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                alignment: Alignment.topRight,
                                child: GestureDetector(
                                  onTap: () => context
                                      .read<UserProfileBloc>()
                                      .add(
                                        const UserProfileEvent.toggleEditMode(),
                                      ),
                                  child: SvgPicture.asset(
                                    SvgImage.edit,
                                    height: 18,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        Center(
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  color: AppColors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 2,
                                      color: AppColors.extraLightGrey2,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      state.updatedUser.profileImage.getValue(),
                                  errorWidget: (context, url, error) {
                                    return const Icon(
                                      Icons.person_outline,
                                      size: 50,
                                      color: AppColors.extraLightGrey2,
                                    );
                                  },
                                  height: 100,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              state.isEditMode
                                  ? Container(
                                      padding: const EdgeInsets.all(6),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.extraLightGrey3,
                                      ),
                                      child: SvgPicture.asset(
                                        SvgImage.edit,
                                        height: 18,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    )
                                  : const Icon(null),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          readOnly: state.isEditMode ? false : true,
                          keyboardType: TextInputType.name,
                          initialValue: state.updatedUser.fullName.getValue(),
                          validator: (_) => context
                              .read<UserProfileBloc>()
                              .state
                              .updatedUser
                              .fullName
                              .value
                              .fold(
                            (l) {
                              return l.whenOrNull(
                                empty: (_) => 'Name is required.',
                              );
                            },
                            (r) => null,
                          ),
                          onChanged: (value) =>
                              context.read<UserProfileBloc>().add(
                                    UserProfileEvent.nameFieldChange(
                                      value: value,
                                    ),
                                  ),
                          decoration: InputDecoration(
                            enabled: state.isEditMode,
                            hintText: 'Enter your name',
                          ),
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          readOnly: state.isEditMode ? false : true,
                          keyboardType: TextInputType.number,
                          initialValue:
                              state.updatedUser.mobileNumber.getValue(),
                          onChanged: (value) =>
                              context.read<UserProfileBloc>().add(
                                    UserProfileEvent.phoneFieldChange(
                                      value: value,
                                    ),
                                  ),
                          validator: (_) => context
                              .read<UserProfileBloc>()
                              .state
                              .updatedUser
                              .mobileNumber
                              .value
                              .fold(
                            (l) {
                              return l.whenOrNull(
                                empty: (_) => 'Mobile number is required.',
                              );
                            },
                            (r) => null,
                          ),
                          decoration: InputDecoration(
                            enabled: state.isEditMode,
                            hintText: 'Enter your mobile number',
                          ),
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          readOnly: state.isEditMode ? false : true,
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) =>
                              context.read<UserProfileBloc>().add(
                                    UserProfileEvent.emailFieldChange(
                                      value: value,
                                    ),
                                  ),
                          initialValue:
                              state.updatedUser.emailAddress.getValue(),
                          validator: (_) => context
                              .read<UserProfileBloc>()
                              .state
                              .updatedUser
                              .emailAddress
                              .value
                              .fold(
                            (l) {
                              return l.whenOrNull(
                                empty: (_) => 'Email is required.',
                                invalidEmail: (_) => 'Invalid email.',
                              );
                            },
                            (r) => null,
                          ),
                          decoration: InputDecoration(
                            enabled: state.isEditMode,
                            border: const UnderlineInputBorder(),
                            hintText: 'Enter your email address',
                          ),
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        state.isEditMode
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      context.read<UserProfileBloc>().add(
                                            const UserProfileEvent
                                                .updateUserClicked(),
                                          );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.black,
                                      minimumSize: const Size(90, 35),
                                    ),
                                    child: const Text('Save'),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      context.read<UserProfileBloc>().add(
                                            const UserProfileEvent
                                                .toggleEditMode(),
                                          );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.black,
                                      minimumSize: const Size(90, 35),
                                    ),
                                    child: const Text('Cancel'),
                                  ),
                                ],
                              )
                            : const Row(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
