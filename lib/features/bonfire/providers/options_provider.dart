import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/models/option.dart';

part 'options_provider.g.dart';

@riverpod
class Options extends _$Options {
  @override
  List<Option> build() {
    return [
      Option(
        letter: OptionLetter.A,
        text: 'The peace in the early mornings',
      ),
      Option(
        letter: OptionLetter.B,
        text: 'The magical golden hours',
      ),
      Option(
        letter: OptionLetter.C,
        text: 'Wind-down time after dinners',
      ),
      Option(
        letter: OptionLetter.D,
        text: 'The serenity past midnight',
      ),
    ];
  }

  void selectOption(Option selectedOption) {
    state = state.map((option) => option.copyWith(
      isSelected: option.letter == selectedOption.letter,
    )).toList();
  }
} 