import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_assets.dart';

class HeaderWidget extends StatelessWidget {
  final Duration timeRemaining;
  final int participantCount;

  const HeaderWidget({
    super.key,
    required this.timeRemaining,
    required this.participantCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Title with dropdown
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Stroll Bonfire',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: AppColors.headerTitle,
                shadows: [
                  Shadow(
                    color: AppColors.headerGlowInner.withOpacity(0.8),
                    blurRadius: 12,
                    offset: const Offset(0, 0),
                  ),
                  Shadow(
                    color: AppColors.headerGlowOuter.withOpacity(0.5),
                    blurRadius: 24,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            SvgPicture.asset(
              AppAssets.dropdownIcon,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        // Time and participants
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAssets.clockIcon,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              '${timeRemaining.inHours}h ${timeRemaining.inMinutes.remainder(60).toString().padLeft(2, '0')}m',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 12),
            SvgPicture.asset(
              AppAssets.usersIcon,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              '$participantCount',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
} 