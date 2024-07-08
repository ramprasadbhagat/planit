import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planit/presentation/address_book/widget/address_book.dart';
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
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
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
          const Expanded(child: AddressBooks()),
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
