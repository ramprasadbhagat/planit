import 'dart:async';
import 'package:flutter/material.dart';
import 'package:planit/config.dart';
import 'package:planit/locator.dart';
import 'package:planit/presentation/theme/colors.dart';

class CommonSearchBar extends StatefulWidget {
  final void Function(String)? onSearchChanged;
  final bool autoFocus;
  final String hintText;
  final String initialValue;
  final Color backgroundColor;
  final void Function()? onClear;
  final void Function(String)? onSearchSubmitted;

  const CommonSearchBar({
    super.key,
    this.onSearchChanged,
    this.autoFocus = true,
    this.hintText = 'Search',
    this.initialValue = '',
    this.backgroundColor = AppColors.whiteBgCard,
    required this.onClear,
    this.onSearchSubmitted,
  });

  @override
  State<CommonSearchBar> createState() => _CommonSearchBarState();
}

class _CommonSearchBarState extends State<CommonSearchBar> {
  Timer? _debounce;
  final controller = TextEditingController();

  @override
  void initState() {
    controller.text = widget.initialValue;
    super.initState();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      autofocus: widget.autoFocus,
      controller: controller,
      onChanged: (value) {
        if (_debounce?.isActive ?? false) _debounce?.cancel();
        _debounce = Timer(
          Duration(
            milliseconds: locator<Config>().autoSearchTimeout,
          ),
          () => widget.onSearchChanged?.call(value),
        );
      },
      onFieldSubmitted: (value) => _onSearch(context, value),
      style: Theme.of(context).textTheme.titleMedium?.copyWith(height: 1.5),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        fillColor: widget.backgroundColor,
        suffixIconConstraints: const BoxConstraints(
          maxHeight: 36,
          maxWidth: 36,
        ),
        suffixIcon: ValueListenableBuilder(
          valueListenable: controller,
          builder: (context, value, _) {
            return value.text.isEmpty
                ? IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: AppColors.grey1,
                    ),
                    iconSize: 20,
                    onPressed: () => _onSearch(
                      context,
                      controller.text,
                    ),
                  )
                : IconButton(
                    iconSize: 20,
                    icon: const Icon(
                      Icons.cancel_rounded,
                      color: AppColors.backgroundCloseButtonSnackBar,
                    ),
                    onPressed: () {
                      widget.onClear?.call();
                      controller.clear();
                    },
                  );
          },
        ),
        hintText: widget.hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: AppColors.backgroundCloseButtonSnackBar),
      ),
    );
  }

  void _onSearch(
    BuildContext context,
    String value,
  ) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    widget.onSearchSubmitted?.call(value);
  }
}
