import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_spacing.dart';
import '../widgets/header/header_widget.dart';
import '../providers/header_provider.dart';
import 'package:riverpod/riverpod.dart';

class BonfireScreen extends ConsumerWidget {
  const BonfireScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final headerInfo = ref.watch(headerProvider);

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
              HeaderWidget(
                timeRemaining: headerInfo.timeRemaining,
                participantCount: headerInfo.participantCount,
              ),
              const SizedBox(height: AppSpacing.headerToProfile),
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