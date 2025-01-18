import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/constants/app_assets.dart';
import '../data/models/question.dart';

part 'question_provider.g.dart';

@riverpod
class QuestionData extends _$QuestionData {
  @override
  Question build() {
    return const Question(
      authorName: 'Angelina',
      authorAge: 28,
      authorAvatar: AppAssets.defaultAvatar,
      questionText: 'What is your favorite time of the day?',
      quoteText: '"Mine is definitely the peace in the morning."',
    );
  }
} 