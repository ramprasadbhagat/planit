import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:planit/presentation/utils/responsive.dart';

class CategoryBody extends StatelessWidget {
  CategoryBody({super.key});

  List<Widget> carouselItems = [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: NetworkImage('https://dadus.co.in/cdn/shop/collections/Desktop_-_Category_Banner_-_Dry_Fruits.jpg?v=1690951748&width=2048'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: NetworkImage('https://www.shutterstock.com/image-photo/mixed-nuts-dried-fruits-wooden-600nw-1370109137.jpg'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: NetworkImage('https://dadus.co.in/cdn/shop/collections/Desktop_-_Category_Banner_-_Dry_Fruits.jpg?v=1690951748&width=2048'),
          fit: BoxFit.fill,
        ),
      ),
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
            top: 10,
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
            itemBuilder: (context,index){
              return Container(
                height: 82,
                width: 80,
                margin: EdgeInsets.only(
                  top: index == 0 ? 0 : 10,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: index == 0 ? AppColors.lightYellow : Colors.white,
                  borderRadius: BorderRadius.circular(8),
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
                    Image.asset('assets/png/almonds.png',
                      height: 45,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      'Fresh Nuts',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
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
                  top: 16,
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 16,
                ),
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: '28 Items',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16,//size.width * 0.04,
                        ),
                      ),
                      TextSpan(text: ' in Dry Fruits',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,//size.width * 0.04,
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
                    mainAxisExtent: 190,
                  ),
                  itemCount: 20,
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width:  0.5,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/png/almonds.png',
                            height: 62,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              'Roasted Almonds',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
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
                                style: TextStyle(
                                  color: Colors.grey.shade900,
                                  fontSize: 11,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 2,
                                ),
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '\u{20B9} 430  ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '470',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.lineThrough,
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
                              onPressed: (){},
                              style:  ElevatedButton.styleFrom(
                                backgroundColor: index == 1 ? AppColors.lightOrange :Colors.white,
                                side: const BorderSide(
                                  color: AppColors.lightOrange,
                                  width: 1,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                padding: EdgeInsets.zero,
                              ),
                              child: index == 1 ?
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(2),
                                          color: Colors.white,
                                          shape: BoxShape.rectangle,
                                        ),
                                        margin: const EdgeInsets.all(6),
                                        child: const Icon(
                                          Icons.remove,
                                          color: Colors.black,
                                          size: 13,
                                        ),
                                      ),
                                      const Text(
                                        '1',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(2),
                                          color: Colors.white,
                                          shape: BoxShape.rectangle,
                                        ),
                                        margin: const EdgeInsets.all(6),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.black,
                                          size: 14,
                                        ),
                                      ),
                                    ],
                                  )
                                  :
                              const Text(
                                'Add to cart',
                                style: TextStyle(
                                  color: AppColors.lightOrange,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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



// {
// "data": [],
// "categories": [
// {
// "id": 1,
// "name": "Fresh Nuts"
// },
// {
// "id": 2,
// "name": "Seasonal"
// },
// {
// "id": 3,
// "name": "Kashmir Spl"
// },
// {
// "id": 4,
// "name": "Roasted"
// },
// {
// "id": 5,
// "name": "Calories"
// },
// {
// "id": 6,
// "name": "Low Calories"
// },
// {
// "id": 7,
// "name": "Weight Loss"
// },
// {
// "id": 8,
// "name": "Used in Sweets"
// }
// ]
// }