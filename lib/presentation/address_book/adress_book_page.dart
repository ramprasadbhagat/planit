import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planit/presentation/address_book/widget/custom_checkbox.dart';
import 'package:planit/presentation/address_book/widget/custom_text_field.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/svg_image.dart';

@RoutePage()
class AddressBookPage extends StatefulWidget {
  const AddressBookPage({super.key});

  @override
  State<AddressBookPage> createState() => _AddressBookPageState();
}

class _AddressBookPageState extends State<AddressBookPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(PngImage.loginBackGround),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  Card(
                    elevation: 2,
                    margin: const EdgeInsets.all(16.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.75,
                        child: SingleChildScrollView(
                          physics: const ClampingScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'New User Adresss',
                                style: textTheme.titleMedium
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomTextField(
                                controller: _nameController,
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
                                controller: _emailController,
                                hintText: 'Email Address',
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  bool emailValidate(String email) {
                                    return RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                                    ).hasMatch(email);
                                  }

                                  if (value == null || value.trim() == '') {
                                    return "email can't be empty";
                                  } else if (!emailValidate(value)) {
                                    return 'please enter a valid email';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomTextField(
                                controller: _pincodeController,
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
                                controller: _addressController,
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
                                controller: _mobileController,
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
                                    onChanged: (e) {},
                                    value: true,
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
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      FocusScope.of(context).unfocus();
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
                              const SizedBox(
                                height: 20,
                              ),
                              ListView.builder(
                                padding: EdgeInsets.zero,
                                itemCount: 2,
                                physics: const ClampingScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    width: double.infinity,
                                    margin: const EdgeInsets.only(top: 10),
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      color: index == 0
                                          ? const Color(0xffF5F5F5)
                                          : Colors.white,
                                      border: Border.all(
                                        width: 1,
                                        color: const Color(0xffECECEC),
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomCheckBox(
                                              onChanged: (e) {},
                                              value: index == 0,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Deliver Address ${index + 1}',
                                              style: textTheme.titleMedium
                                                  ?.copyWith(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 6),
                                          child: Text(
                                            '19, Peary Das Lane . Kolkata-700 006',
                                            style:
                                                textTheme.titleMedium?.copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.grey3,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const SizedBox(),
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: SvgPicture.asset(
                                                    SvgImage.edit,
                                                    height: 18,
                                                    fit: BoxFit.fitHeight,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 6,
                                                ),
                                                InkWell(
                                                  onTap: () {},
                                                  child: SvgPicture.asset(
                                                    SvgImage.delete,
                                                    height: 18,
                                                    fit: BoxFit.fitHeight,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
