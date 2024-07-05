import 'package:flutter/material.dart';
import 'package:planit/presentation/category/widgets/banner.dart';
import 'package:planit/presentation/category/widgets/sub_category_list.dart';
import 'package:planit/presentation/category/widgets/sub_category_product.dart';
import 'package:planit/presentation/category/widgets/sub_category_product_count.dart';

class CategoryBody extends StatelessWidget {
  final bool openFromOccassion;
  const CategoryBody({super.key, this.openFromOccassion = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SubCategoryList(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubcategoryBanner(
                showOccasionBanner: openFromOccassion,
              ),
              const SubCategoryProductCount(),
              const SubCategoryProduct(),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// class CategoryItemCard extends StatelessWidget {
//   final CategoryItem categoryItem;
//   const CategoryItemCard({
//     super.key,
//     required this.categoryItem,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: Colors.grey,
//           width: 0.5,
//         ),
//       ),
//       padding: const EdgeInsets.symmetric(
//         horizontal: 10,
//         vertical: 10,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 6,
//             ),
//             child: Image.asset(
//               PngImage.genericDemo(categoryItem.image),
//               height: 77,
//               width: double.infinity,
//               fit: BoxFit.contain,
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Expanded(
//             child: Text(
//               categoryItem.title,
//               style: GoogleFonts.inter(
//                 textStyle: const TextStyle(
//                   color: AppColors.textBlackDeep,
//                   fontSize: 13,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//               overflow: TextOverflow.ellipsis,
//               maxLines: 2,
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 '1 kg',
//                 style: GoogleFonts.inter(
//                   textStyle: const TextStyle(
//                     color: AppColors.grey1,
//                     fontSize: 11,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(
//                   top: 2,
//                 ),
//                 child: RichText(
//                   text: TextSpan(
//                     children: [
//                       TextSpan(
//                         text: '\u{20B9} 430  ',
//                         style: GoogleFonts.inter(
//                           textStyle: const TextStyle(
//                             color: AppColors.textBlackDeep,
//                             fontSize: 11,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ),
//                       TextSpan(
//                         text: '470',
//                         style: GoogleFonts.inter(
//                           textStyle: const TextStyle(
//                             color: AppColors.grey2,
//                             fontSize: 11,
//                             fontWeight: FontWeight.w400,
//                             decoration: TextDecoration.lineThrough,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           SizedBox(
//             height: 26,
//             width: double.infinity,
//             child: ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                 // backgroundColor:
//                 //     index == 1 ? AppColors.lightOrange : Colors.white,
//                 side: const BorderSide(
//                   color: AppColors.lightOrange,
//                   width: 1,
//                 ),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(4),
//                 ),
//                 padding: EdgeInsets.zero,
//               ),
//               child: true
//                   ? Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           height: 15,
//                           width: 15,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(2),
//                             color: Colors.white,
//                             shape: BoxShape.rectangle,
//                           ),
//                           margin: const EdgeInsets.all(6),
//                           child: const Icon(
//                             Icons.remove,
//                             color: AppColors.textBlack,
//                             size: 13,
//                           ),
//                         ),
//                         Text(
//                           '1',
//                           style: GoogleFonts.inter(
//                             textStyle: const TextStyle(
//                               color: Colors.white,
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ),
//                         Container(
//                           height: 15,
//                           width: 15,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(2),
//                             color: Colors.white,
//                             shape: BoxShape.rectangle,
//                           ),
//                           margin: const EdgeInsets.all(6),
//                           child: const Icon(
//                             Icons.add,
//                             color: AppColors.textBlack,
//                             size: 14,
//                           ),
//                         ),
//                       ],
//                     )
//                   : Text(
//                       'Add to cart',
//                       style: GoogleFonts.montserrat(
//                         textStyle: const TextStyle(
//                           color: AppColors.lightOrange,
//                           fontSize: 11,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
