import 'package:flutter/material.dart';

class NavItem {
  final String icon;
  final String label;
  final int? badgeCount;
  final bool isSelected;
  final bool showBadge;

  const NavItem({
    required this.icon,
    required this.label,
    this.badgeCount,
    this.isSelected = false,
    this.showBadge = false,
  });

  NavItem copyWith({
    String? icon,
    String? label,
    int? badgeCount,
    bool? isSelected,
    bool? showBadge,
  }) {
    return NavItem(
      icon: icon ?? this.icon,
      label: label ?? this.label,
      badgeCount: badgeCount ?? this.badgeCount,
      isSelected: isSelected ?? this.isSelected,
      showBadge: showBadge ?? this.showBadge,
    );
  }
} 