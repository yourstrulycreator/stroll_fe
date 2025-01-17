import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/app_colors.dart';
import '../providers/navigation_provider.dart';
import 'nav_item_widget.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navItems = ref.watch(navigationProvider);

    return Container(
      decoration: BoxDecoration(
        color: AppColors.bottomNavBackground,
        border: Border(
          top: BorderSide(
            color: AppColors.optionBorder,
            width: 0.5,
          ),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            navItems.length,
            (index) => NavItemWidget(
              item: navItems[index],
              onTap: () => ref.read(navigationProvider.notifier).selectTab(index),
            ),
          ),
        ),
      ),
    );
  }
} 