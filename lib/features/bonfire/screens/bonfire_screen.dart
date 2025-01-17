import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_spacing.dart';

class BonfireScreen extends StatelessWidget {
  const BonfireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.screenPaddingHorizontal,
            vertical: AppSpacing.screenPaddingVertical,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section (Stroll Bonfire + Time/Participants)
              
              // Profile Section (Avatar + Name + Age)
              
              // Question Section (Question + Quote)
              
              // Options Section (Multiple Choice)
              
              // Bottom Actions (Mic + Next)
            ],
          ),
        ),
      ),
    );
  }
} 