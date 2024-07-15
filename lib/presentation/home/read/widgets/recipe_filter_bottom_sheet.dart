import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class RecipeFilterBottomSheet extends StatelessWidget {
  const RecipeFilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final cuisines = [
      'Mediterranean',
      'Continental',
      'Indian',
      'Mexican',
      'American',
      'Italian',
      'European',
    ];
    final course = [
      'Breakfast',
      'Desert',
      'Appetizer',
      'Dinner',
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Filter',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 16,
              ),
              FilterOptionList(
                options: cuisines,
                title: 'Cuisine',
                initiallyExpanded: true,
              ),
              const SizedBox(
                height: 15,
              ),
              FilterOptionList(
                options: course,
                title: 'Course',
              ),
            ],
          ),
        ),
        Material(
          elevation: 3,
          color: AppColors.whiteBgCard,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(112, 38),
                    side: const BorderSide(
                      color: AppColors.grey4,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: AppColors.textBlack,
                        ),
                  ),
                  onPressed: () {},
                  child: const Text('Clear All(1)'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(112, 38),
                    textStyle: Theme.of(context).textTheme.titleSmall,
                  ),
                  onPressed: () {},
                  child: const Text('Apply Filter'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FilterOptionList extends StatelessWidget {
  final String title;
  final bool initiallyExpanded;
  const FilterOptionList({
    super.key,
    required this.options,
    required this.title,
    this.initiallyExpanded = false,
  });

  final List<String> options;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.whiteBgCard,
      elevation: 4,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: Theme(
        data: Theme.of(context).copyWith(
          checkboxTheme: CheckboxThemeData(
            fillColor: MaterialStateColor.resolveWith((states) {
              if (states.contains(MaterialState.selected)) {
                return AppColors.black;
              }
              return AppColors.white;
            }),
          ),
        ),
        child: ExpansionTile(
          initiallyExpanded: initiallyExpanded,
          shape: const RoundedRectangleBorder(),
          iconColor: AppColors.black,
          textColor: AppColors.black,
          tilePadding: const EdgeInsets.symmetric(horizontal: 15),
          title: Text(title),
          children: options
              .map(
                (e) => CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                  dense: true,
                  checkboxShape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                  ),
                  title: Text(e),
                  value: false,
                  onChanged: (v) {},
                  visualDensity: VisualDensity.compact,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
