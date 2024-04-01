import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planit/presentation/theme/colors.dart';

class CategoryAlertDialog extends StatelessWidget {
  CategoryAlertDialog({super.key});

  final List<String> categoryImageList = [
    'assets/demo/almonds.png',
    'assets/demo/dates.png',
    'assets/demo/kiwi.png',
    'assets/demo/cashew.png',
    'assets/demo/cashew_bowl.png',
    'assets/demo/kiwi_fruit.png',
    'assets/demo/pista.png',
    'assets/demo/plum.png',
    'assets/demo/almonds.png',
    'assets/demo/cashew.png',
  ];

  final List<String> categoryNameList = [
    'Dry fruits',
    'Gourmet cheese',
    'Powdered spices',
    'Dairy and breakfast',
    'Premium pulses',
    'Herbs',
    'Fresh cashew',
    'Fresh nuts',
    'Fresh fruits',
    'Powdered spices',
  ];


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(
        vertical: 50,
        horizontal: 20,
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      content: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shop by category',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        '18 categories',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: AppColors.lightOrange,
                          ),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      context.router.maybePop();
                    },
                    child: const Icon(
                      Icons.clear,
                      color: AppColors.grey3,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 8,
                  ),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      for(int i=0;i<10;i++)
                        Container(
                          height: 98,
                          width: 102,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color:  Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.0,
                                blurRadius: 3,
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                categoryImageList[i],
                                height: 45,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                child: Text(
                                  categoryNameList[i],
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                      color: AppColors.textBlack,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
