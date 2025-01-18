import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_assets.dart';
import '../../data/models/option.dart';
import 'option_item.dart';

class OptionsSection extends StatelessWidget {
  final List<Option> options;
  final Function(Option) onOptionSelected;
  final VoidCallback onNext;
  final VoidCallback onMicTap;

  const OptionsSection({
    super.key,
    required this.options,
    required this.onOptionSelected,
    required this.onNext,
    required this.onMicTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Options Grid
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 2.5,
          ),
          itemCount: options.length,
          itemBuilder: (context, index) => OptionItem(
            option: options[index],
            onTap: () => onOptionSelected(options[index]),
          ),
        ),
        const SizedBox(height: 16),
        // Bottom Row with Instructions and Actions
        Row(
          children: [
            // Instructions Text
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pick your option',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  'See who has a similar mind',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const Spacer(),
            // Action Buttons
            Row(
              children: [
                _ActionButton(
                  icon: AppAssets.micIcon,
                  onTap: onMicTap,
                  color: Colors.white,
                ),
                const SizedBox(width: 16),
                _ActionButton(
                  icon: CupertinoIcons.arrow_right,
                  isCustomIcon: true,
                  onTap: onNext,
                  color: AppColors.primary,
                  isPrimary: true,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final dynamic icon;
  final VoidCallback onTap;
  final Color color;
  final bool isCustomIcon;
  final bool isPrimary;

  const _ActionButton({
    required this.icon,
    required this.onTap,
    required this.color,
    this.isCustomIcon = false,
    this.isPrimary = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isPrimary ? AppColors.primary : Colors.transparent,
          border: Border.all(
            width: 2,
            color: isPrimary ? Colors.transparent : AppColors.primary,
          ),
        ),
        child: Center(
          child: isCustomIcon
              ? Icon(
                  icon,
                  color: isPrimary ? Colors.black : color,
                  size: 24,
                )
              : SvgPicture.asset(
                  icon,
                  colorFilter: ColorFilter.mode(
                    isPrimary ? Colors.black : AppColors.primary,
                    BlendMode.srcIn,
                  ),
                ),
        ),
      ),
    );
  }
} 