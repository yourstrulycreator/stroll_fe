import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/models/nav_item.dart';
import '../../../core/constants/app_assets.dart';

part 'navigation_provider.g.dart';

@riverpod
class Navigation extends _$Navigation {
  @override
  List<NavItem> build() {
    return [
      const NavItem(icon: AppAssets.cardsIcon, label: 'Cards'),
      const NavItem(
        icon: AppAssets.bonfireIcon, 
        label: 'Bonfire', 
        isSelected: true,
        showBadge: true,
      ),
      const NavItem(icon: AppAssets.chatIcon, label: 'Chat', badgeCount: 10),
      const NavItem(icon: AppAssets.userIcon, label: 'Profile'),
    ];
  }

  void selectTab(int index) {
    state = state.asMap().entries.map((entry) {
      return entry.value.copyWith(
        isSelected: entry.key == index,
      );
    }).toList();
  }
} 