import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/models/header_info.dart';

part 'header_provider.g.dart';

@riverpod
class Header extends _$Header {
  @override
  HeaderInfo build() {
    return const HeaderInfo(
      timeRemaining: Duration(hours: 22),
      participantCount: 103,
    );
  }
} 