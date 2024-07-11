import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/utils/png_image.dart';

class NutritionalFactsDialog extends StatelessWidget {
  const NutritionalFactsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(PngImage.generic('nutrition_facts.png')),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: const Size(80, 30),
                textStyle: Theme.of(context).textTheme.bodyMedium,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              onPressed: () {
                context.router.maybePop();
              },
              child: const Text('Done'),
            ),
          ],
        ),
      ),
    );
  }
}
