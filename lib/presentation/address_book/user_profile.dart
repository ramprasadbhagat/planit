import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planit/presentation/address_book/widget/address_book.dart';
import 'package:planit/presentation/address_book/widget/custom_checkbox.dart';
import 'package:planit/presentation/address_book/widget/custom_text_field.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/svg_image.dart';

@RoutePage()
class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  bool showEditButton = false;
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController(text: 'Thomas Jones');
  final mobileController = TextEditingController(text: '9898980');
  final emailAddressController = TextEditingController(text: 'test@gmail.com');

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Profile',
          style: textTheme.labelLarge,
        ),
        leadingWidth: 20,
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColors.lightGrey,
          ),
          onPressed: () => context.router.maybePop(),
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
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
                          fillColor: nameController.text.isEmpty ||
                                  mobileController.text.isEmpty ||
                                  emailAddressController.text.isEmpty
                              ? const MaterialStatePropertyAll(
                                  Colors.grey,
                                )
                              : const MaterialStatePropertyAll(
                                  Colors.green,
                                ),
                          value: true,
                          onChanged: (e) {},
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // border: Border.all(color: Color.fromRGBO(0, 0, b, opacity)),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                alignment: Alignment.topRight,
                                child: GestureDetector(
                                  onTap: () => {
                                    setState(() {
                                      showEditButton = !showEditButton;
                                    }),
                                  },
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
                                showEditButton
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
                            readOnly: showEditButton ? false : true,
                            keyboardType: TextInputType.name,
                            controller: nameController,
                            decoration: InputDecoration(
                              border: const UnderlineInputBorder(),
                              fillColor: Colors.white,
                              hintText: 'Enter your name',
                              hintStyle: textTheme.titleMedium?.copyWith(
                                fontSize: 11,
                                color: AppColors.lightGrey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 0.3,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            readOnly: showEditButton ? false : true,
                            keyboardType: TextInputType.number,
                            controller: mobileController,
                            decoration: InputDecoration(
                              border: const UnderlineInputBorder(),
                              fillColor: Colors.white,
                              hintText: 'Enter your mobile number',
                              hintStyle: textTheme.titleMedium?.copyWith(
                                fontSize: 11,
                                color: AppColors.lightGrey,
                              ),
                              errorStyle: const TextStyle(height: 0),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 0.3,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            readOnly: showEditButton ? false : true,
                            keyboardType: TextInputType.emailAddress,
                            controller: emailAddressController,
                            decoration: InputDecoration(
                              border: const UnderlineInputBorder(),
                              fillColor: Colors.white,
                              hintText: 'Enter your email address',
                              hintStyle: textTheme.titleMedium?.copyWith(
                                fontSize: 11,
                                color: AppColors.lightGrey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 0.3,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          showEditButton
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          showEditButton = false;
                                        });
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
                                        setState(() {
                                          showEditButton = false;
                                        });
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
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Address Book',
                  style: textTheme.titleMedium?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) =>
                          const CommonBottomSheet(
                        child: NewAddressBookSheet(),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.add,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
          const AddressBooks(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    nameController.clear();
    emailAddressController.clear();
    mobileController.clear();
    super.dispose();
  }
}

class NewAddressBookSheet extends StatefulWidget {
  const NewAddressBookSheet({super.key});

  @override
  State<NewAddressBookSheet> createState() => _NewAddressBookSheetState();
}

class _NewAddressBookSheetState extends State<NewAddressBookSheet> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final pincodeController = TextEditingController();
  final addressController = TextEditingController();
  final mobileController = TextEditingController();
  var isDefault = true;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.8,
      child: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Add Adresss Book',
                    style: textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    controller: nameController,
                    hintText: 'Name',
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.trim() == '') {
                        return "name can't be empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    controller: pincodeController,
                    hintText: 'Pin Code',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.trim() == '') {
                        return "pin code can't be empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    controller: addressController,
                    hintText: 'Address',
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.trim() == '') {
                        return "address can't be empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    controller: mobileController,
                    hintText: 'Mobile Number',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.trim() == '') {
                        return "mobile number can't be empty";
                      } else if (value.trim().length < 10) {
                        return 'enter valid mobile number';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomCheckBox(
                        onChanged: (e) {
                          setState(() {
                            isDefault = e!;
                          });
                        },
                        value: isDefault,
                      ),
                      Text(
                        'Prefered / Default',
                        style: textTheme.titleMedium?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              height: 70,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8,
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // context.read<AddressBookBloc>().add(
                      //       AddressBookEvent.addAddressBook(
                      //         addressBook:
                      //         AddressBook.empty().copyWith(
                      //           address: addressController.text,
                      //           fullName: nameController.text,
                      //           phoneNumber: mobileController.text,
                      //           pincode: pincodeController.text,
                      //         ),
                      //         isMakeDefault: isDefault,
                      //       ),
                      //     );
                      FocusScope.of(context).unfocus();
                      context.router.maybePop();
                      const snackBar = SnackBar(
                        content: Text('AddressBook added successfully'),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: AppColors.black,
                    maximumSize: const Size(330, 50),
                  ),
                  child: const Text('Add Delivery Address'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.clear();
    pincodeController.clear();
    addressController.clear();
    mobileController.clear();
    super.dispose();
  }
}
