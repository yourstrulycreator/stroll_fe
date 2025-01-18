import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_spacing.dart';
import '../widgets/header/header_widget.dart';
import '../providers/header_provider.dart';
import 'package:riverpod/riverpod.dart';
import '../providers/options_provider.dart';
import '../widgets/options/options_section.dart';
import '../providers/question_provider.dart';
import '../widgets/question/question_section.dart';

class BonfireScreen extends ConsumerWidget {
  const BonfireScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final headerInfo = ref.watch(headerProvider);
    final options = ref.watch(optionsProvider);
    final question = ref.watch(questionDataProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.screenPaddingHorizontal,
            AppSpacing.screenPaddingVertical,
            AppSpacing.screenPaddingHorizontal,
            0,
          ),
          child: Column(
            children: [
              HeaderWidget(
                timeRemaining: headerInfo.timeRemaining,
                participantCount: headerInfo.participantCount,
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    QuestionSection(question: question),
                    const SizedBox(height: 16),
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
            ],
          ),
        ),
      ),
    );
  }
} 