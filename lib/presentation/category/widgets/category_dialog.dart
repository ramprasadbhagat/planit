import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/presentation/utils/responsive.dart';

class CategoryAlertDialog extends StatelessWidget {
  const CategoryAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(
        vertical: 70,
        horizontal: 20,
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      content: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
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
                        style: TextStyle(
                          fontSize: Responsive.isWeb(context) ? 28 : 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '18 categories',
                        style: TextStyle(
                          fontSize: Responsive.isWeb(context) ? 24 : 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.lightOrange,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      context.router.maybePop();
                    },
                    child: Icon(
                      Icons.clear,
                      color: Colors.grey,
                      size: Responsive.isWeb(context) ? 40 : 30,
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
                      for(int i=0;i<18;i++)
                        Container(
                          height: 86,
                          width: 78,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color:  Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.0,
                                blurRadius: 5,
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/png/almonds.png',
                                height: 40,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                'Dry fruits',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
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
