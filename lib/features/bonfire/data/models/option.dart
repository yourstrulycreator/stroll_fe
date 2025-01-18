enum OptionLetter {
  A,
  B,
  C,
  D;

  String get label => name;
}

class Option {
  final OptionLetter letter;
  final String text;
  final bool isSelected;

  const Option({
    required this.letter,
    required this.text,
    this.isSelected = false,
  });

  Option copyWith({
    OptionLetter? letter,
    String? text,
    bool? isSelected,
  }) {
    return Option(
      letter: letter ?? this.letter,
      text: text ?? this.text,
      isSelected: isSelected ?? this.isSelected,
    );
  }
} 