import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  size: 24,
                  color: Colors.grey,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: AppColors.lightGrey, width: 1.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Badge(
              label: Text('5'),
              backgroundColor: AppColors.primary,
              child: Icon(
                Icons.notifications_outlined,
                color: AppColors.extraLightGrey2,
                size: 30,
              ),
            ),
          ),
          const CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage(
              'https://via.placeholder.com/150',
            ),
          ),
        ],
      ),
    );
  }
}
