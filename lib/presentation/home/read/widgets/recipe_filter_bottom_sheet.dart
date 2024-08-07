import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/recipe/recipe_bloc.dart';
import 'package:planit/presentation/theme/colors.dart';

class RecipeFilterBottomSheet extends StatelessWidget {
  const RecipeFilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
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
              BlocBuilder<RecipeBloc, RecipeState>(
                builder: (context, state) {
                  return FilterOptionList(
                    options: state.cuisines,
                    title: 'Cuisine',
                    initiallyExpanded: true,
                    onChange: (value) => context
                        .read<RecipeBloc>()
                        .add(RecipeEvent.cuisineCheckboxChange(value)),
                    selectedOptions: state.tempSelectedCuisineFilter,
                  );
                },
              ),
              const SizedBox(
                height: 15,
              ),
              BlocBuilder<RecipeBloc, RecipeState>(
                builder: (context, state) {
                  return FilterOptionList(
                    options: state.courses,
                    title: 'Course',
                    selectedOptions: state.tempSelectedCourseFilter,
                    onChange: (value) => context
                        .read<RecipeBloc>()
                        .add(RecipeEvent.courseCheckboxChange(value)),
                  );
                },
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
                BlocBuilder<RecipeBloc, RecipeState>(
                  buildWhen: (previous, current) =>
                      previous.tempFilterCount != current.tempFilterCount,
                  builder: (context, state) {
                    return OutlinedButton(
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
                        textStyle:
                            Theme.of(context).textTheme.titleSmall?.copyWith(
                                  color: AppColors.textBlack,
                                ),
                      ),
                      onPressed: state.tempFilterCount == 0
                          ? null
                          : () => context
                              .read<RecipeBloc>()
                              .add(const RecipeEvent.clearAllFilterClicked()),
                      child: Text(
                        'Clear All${state.tempFilterCount == 0 ? '' : ' (${state.tempFilterCount})'}',
                      ),
                    );
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(112, 38),
                    textStyle: Theme.of(context).textTheme.titleSmall,
                  ),
                  onPressed: () {
                    context
                        .read<RecipeBloc>()
                        .add(const RecipeEvent.applyFilterClicked());
                    context.router.maybePop();
                  },
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
  final Function(String value) onChange;
  const FilterOptionList({
    super.key,
    required this.options,
    required this.title,
    this.initiallyExpanded = false,
    required this.onChange,
    required this.selectedOptions,
  });

  final List<String> options;
  final List<String> selectedOptions;

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
                  title: Text(
                    e,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  value: selectedOptions.contains(e),
                  onChanged: (v) => onChange(e),
                  visualDensity: VisualDensity.compact,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
