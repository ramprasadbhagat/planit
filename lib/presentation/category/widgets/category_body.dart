import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planit/domain/category/category_item.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/responsive.dart';

class CategoryBody extends StatelessWidget {
  CategoryBody({super.key});

  final List<Widget> carouselItems = [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage(
            'assets/demo/banner.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage(
            'assets/demo/banner.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage(
            'assets/demo/banner.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
    ),
  ];

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
    'Fresh Nuts',
    'Seasonal',
    'Kashmir Spl',
    'Roasted',
    'Calories',
    'Low Calories',
    'Weight Loss',
    'Used in Sweets',
    'Fresh Nuts',
    'Seasonal',
  ];

  final List<CategoryItem> categoryItems = [
    CategoryItem(
      title: 'Johnson Roasted Cashew',
      image: 'gridItem_1.png',
      editable: false,
    ),
    CategoryItem(
      title: 'Johnson Roasted Cashew',
      image: 'almonds.png',
      editable: false,
    ),
    CategoryItem(
      title: 'Johnson Roasted Cashew',
      image: 'pista.png',
      editable: false,
    ),
    CategoryItem(
      title: 'Johnson Roasted Cashew',
      image: 'gridItem_2.png',
      editable: false,
    ),
    CategoryItem(
      title: 'Johnson Roasted Cashew',
      image: 'gridItem_3.png',
      editable: false,
    ),
    CategoryItem(
      title: 'Johnson Roasted Cashew',
      image: 'gridItem_4.png',
      editable: false,
    ),
    CategoryItem(
      title: 'Johnson Roasted Cashew',
      image: 'gridItem_1.png',
      editable: false,
    ),
    CategoryItem(
      title: 'Johnson Roasted Cashew',
      image: 'almonds.png',
      editable: false,
    ),
    CategoryItem(
      title: 'Johnson Roasted Cashew',
      image: 'pista.png',
      editable: false,
    ),
    CategoryItem(
      title: 'Johnson Roasted Cashew',
      image: 'gridItem_2.png',
      editable: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: double.infinity,
          width: 100,
          margin: const EdgeInsets.only(
            top: 5,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0),
                blurRadius: 0.8,
              ),
            ],
          ),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 8,
            ),
            itemBuilder: (context, index) {
              return Container(
                height: 82,
                width: 80,
                margin: EdgeInsets.only(
                  top: index == 0 ? 0 : 10,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 2,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: index == 0 ? AppColors.selectedYellow : Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0),
                      blurRadius: 1.5,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      categoryImageList[index],
                      height: 43,
                      width: 60,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      categoryNameList[index],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: AppColors.textBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 4,
                  right: 4,
                ),
                child: CarouselSlider(
                  items: carouselItems,
                  options: CarouselOptions(
                    viewportFraction: 0.95,
                    height: 120,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    onPageChanged: (index, reason) {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 14,
                  right: 14,
                  top: 20,
                  bottom: 10,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '57 Items',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.textBlack,
                            fontSize: 16, //size.width * 0.04,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: ' in Dry Fruits',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.textBlack,
                            fontSize: 16, //size.width * 0.04,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: Responsive.isWeb(context) ? 5 : 2,
                    mainAxisExtent: 170,
                  ),
                  itemCount: categoryItems.length,
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  itemBuilder: (context, index) {
                    return CategoryCart2(
                      item: categoryItems.elementAt(index),
                    );
                  },
                ),
              ),
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

class CategoryCart2 extends StatelessWidget {
  final CategoryItem item;

  const CategoryCart2({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.28,
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  height: MediaQuery.sizeOf(context).height * 0.1,
                  child: Image.asset(PngImage.genericDemo(item.image)),
                ),
                item.editable
                    ? const AddToListTextField()
                    : const AddToListButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    item.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.bodySmall?.copyWith(fontSize: 10),
                  ),
                ),
                Text(
                  '1g',
                  style: textTheme.bodySmall?.copyWith(
                    color: AppColors.grey1,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  '\$430 ',
                  style: textTheme.bodySmall?.copyWith(
                    fontSize: 9,
                  ),
                ),
                Text(
                  ' 470',
                  style: textTheme.bodySmall!.copyWith(
                    decoration: TextDecoration.lineThrough,
                    color: AppColors.lightGray,
                    fontSize: 9,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 9,
                    ),
                    Text(
                      '4.3',
                      style: textTheme.bodySmall?.copyWith(
                        fontSize: 9,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.03,
                  width: MediaQuery.sizeOf(context).width * 0.17,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      side: const BorderSide(color: Colors.black),
                      foregroundColor: AppColors.grey3,
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                    ),
                    child: Text(
                      'Add to cart',
                      style: textTheme.bodySmall?.copyWith(fontSize: 9),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AddToListButton extends StatelessWidget {
  const AddToListButton({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: 25,
      width: 75,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          side: const BorderSide(color: Colors.black),
          foregroundColor: AppColors.grey3,
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
            vertical: 3,
          ),
          textStyle: textTheme.bodySmall
              ?.copyWith(fontSize: 9, color: AppColors.lightGrey),
        ),
        child: const Row(
          children: [
            Icon(
              Icons.favorite_outline,
              size: 12,
              color: AppColors.grey3,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              'Add to list',
            ),
          ],
        ),
      ),
    );
  }
}

class AddToListTextField extends StatefulWidget {
  const AddToListTextField({super.key});

  @override
  State<AddToListTextField> createState() => _AddToListTextFieldState();
}

class _AddToListTextFieldState extends State<AddToListTextField> {
  int countValue = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 80,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.black,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.favorite_rounded,
            size: 12,
            color: Color.fromRGBO(167, 22, 0, 1),
          ),
          GestureDetector(
            onTap: () => setState(() => countValue += 1),
            child: const Icon(
              Icons.add,
              size: 12,
              color: AppColors.black,
            ),
          ),
          Text(countValue.toString()),
          GestureDetector(
            onTap: () => setState(() {
              if (countValue > 1) {
                countValue -= 1;
              }
            }),
            child: const Icon(
              Icons.remove,
              size: 12,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryItemCard extends StatelessWidget {
  final CategoryItem categoryItem;
  const CategoryItemCard({
    super.key,
    required this.categoryItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
            ),
            child: Image.asset(
              PngImage.genericDemo(categoryItem.image),
              height: 77,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Text(
              categoryItem.title,
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  color: AppColors.textBlackDeep,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1 kg',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: AppColors.grey1,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 2,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '\u{20B9} 430  ',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: AppColors.textBlackDeep,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: '470',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: AppColors.grey2,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 26,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // backgroundColor:
                //     index == 1 ? AppColors.lightOrange : Colors.white,
                side: const BorderSide(
                  color: AppColors.lightOrange,
                  width: 1,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: EdgeInsets.zero,
              ),
              child: true
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          margin: const EdgeInsets.all(6),
                          child: const Icon(
                            Icons.remove,
                            color: AppColors.textBlack,
                            size: 13,
                          ),
                        ),
                        Text(
                          '1',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          margin: const EdgeInsets.all(6),
                          child: const Icon(
                            Icons.add,
                            color: AppColors.textBlack,
                            size: 14,
                          ),
                        ),
                      ],
                    )
                  : Text(
                      'Add to cart',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: AppColors.lightOrange,
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
