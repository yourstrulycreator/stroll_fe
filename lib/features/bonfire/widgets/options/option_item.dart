import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../data/models/option.dart';

class OptionItem extends StatelessWidget {
  final Option option;
  final VoidCallback? onTap;

  const OptionItem({
    super.key,
    required this.option,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: option.isSelected 
                ? AppColors.optionSelectedBorder 
                : AppColors.optionBorder,
            width: 1,
          ),
          color: option.isSelected 
              ? AppColors.optionSelected.withOpacity(0.2)
              : Colors.transparent,
        ),
        child: Row(
          children: [
            const SizedBox(width: 16),
            // Letter Circle
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: option.isSelected 
                      ? AppColors.optionSelectedBorder 
                      : AppColors.optionBorder,
                ),
              ),
              child: Center(
                child: Text(
                  option.letter.label,
                  style: TextStyle(
                    color: option.isSelected 
                        ? AppColors.primary 
                        : Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            // Option Text
            Expanded(
              child: Text(
                option.text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
} 