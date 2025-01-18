import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_spacing.dart';
import '../widgets/header/header_widget.dart';
import '../providers/header_provider.dart';
import 'package:riverpod/riverpod.dart';
import '../providers/options_provider.dart';
import '../widgets/options/options_section.dart';

class BonfireScreen extends ConsumerWidget {
  const BonfireScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final headerInfo = ref.watch(headerProvider);
    final options = ref.watch(optionsProvider);

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
              const Spacer(),
              OptionsSection(
                options: options,
                onOptionSelected: (option) {
                  ref.read(optionsProvider.notifier).selectOption(option);
                },
                onNext: () {
                  // Handle next action
                },
                onMicTap: () {
                  // Handle mic tap
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
} 