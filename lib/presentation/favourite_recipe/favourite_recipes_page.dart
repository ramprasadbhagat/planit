import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planit/presentation/core/rating_star.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/svg_image.dart';

@RoutePage()
class FavouriteRecipesPage extends StatelessWidget {
  const FavouriteRecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    const isEmpty = true;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: TextScaler.noScaling,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Favourite Recipes'),
          centerTitle: false,
          leadingWidth: 35,
        ),
        body: !isEmpty
            // ignore: dead_code
            ? const RecipeEmpty()
            : ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 10),
                itemCount: 10,
                itemBuilder: (context, index) => const FavouriteRecipeCard(),
              ),
      ),
    );
  }
}

class FavouriteRecipeCard extends StatelessWidget {
  const FavouriteRecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(11)),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(7)),
                  child: Image.asset(
                    PngImage.generic('recipe.png'),
                    height: 92,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'California Grilled Veggie Sandwich',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          'A flavourful Middle Eastern breakfast, easy to prepare and with a delicious medley of flavours.',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: AppColors.grey2,
                                  ),
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            SvgImage.spoonIcon,
                            colorFilter: const ColorFilter.mode(
                              AppColors.black,
                              BlendMode.srcIn,
                            ),
                          ),
                          Text.rich(
                            const TextSpan(
                              text: ' Cuisine :',
                              children: [
                                TextSpan(
                                  text: 'American',
                                  style: TextStyle(
                                    color: AppColors.grey2,
                                  ),
                                ),
                              ],
                            ),
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      const RatingStar(
                        value: 4.3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            right: 20,
            bottom: 16,
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.all(Radius.circular(50)),
              child: Padding(
                padding: EdgeInsets.all(6.6),
                child: Icon(
                  Icons.favorite,
                  color: AppColors.deepRed,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecipeEmpty extends StatelessWidget {
  const RecipeEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 29),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(SvgImage.recipeEmptyIcon),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Your Favourite Recipes List is empty !',
            style: textTheme.titleLarge?.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text.rich(
            TextSpan(
              children: const [
                TextSpan(
                  text: 'Tap ',
                ),
                WidgetSpan(
                  child: Icon(
                    Icons.favorite_rounded,
                    size: 20,
                    color: AppColors.deepRed,
                  ),
                ),
                TextSpan(
                  text: ' button to start saving your\nfavourite recipes.',
                ),
              ],
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Explore')),
        ],
      ),
    );
  }
}
