import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constants/app_colors.dart';
import '../data/models/nav_item.dart';

class NavItemWidget extends StatelessWidget {
  final NavItem item;
  final VoidCallback onTap;

  const NavItemWidget({
    super.key,
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // Icon
            SvgPicture.asset(
              item.icon,
              colorFilter: ColorFilter.mode(
                item.isSelected ? AppColors.primary : AppColors.bottomNavInactive,
                BlendMode.srcIn,
              ),
            ),
            
            // Badge
            if (item.showBadge || item.badgeCount != null)
              Positioned(
                top: -8,
                right: -8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: item.badgeCount != null
                      ? Text(
                          '${item.badgeCount}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : const SizedBox(width: 4, height: 4),
                ),
              ),
          ],
        ),
      ),
    );
  }
} 