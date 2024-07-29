import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:planit/utils/png_image.dart';

class NutritionalFactsDialog extends StatelessWidget {
  final String imageUrl;
  const NutritionalFactsDialog({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            CachedNetworkImage(
              imageUrl: imageUrl,
              height: 460,
              errorWidget: (context, url, error) {
                return Image.asset(
                  PngImage.placeholder,
                  height: 460,
                );
              },
            ),
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
