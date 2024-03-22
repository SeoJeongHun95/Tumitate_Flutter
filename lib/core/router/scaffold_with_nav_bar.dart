import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/menu/presentation/providers/menu_badge_provider.dart';
import '../theme/local/jp_strings.dart';

class ScaffoldWithNavBar extends ConsumerWidget {
  const ScaffoldWithNavBar({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasMenuAlert = ref.watch(menuBadgeProvider) > 0;

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Colors.lightGreen,
        selectedFontSize: 12,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedItemColor: Colors.grey[500],
        unselectedFontSize: 12,
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.price_change_outlined, size: 30),
            label: JPStrings.RESERVE,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.description_outlined, size: 30),
            label: JPStrings.DETAIL,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.savings_outlined, size: 30),
            label: JPStrings.RESERVECONDITION,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.restore_rounded, size: 30),
            label: JPStrings.RECORD,
          ),
          BottomNavigationBarItem(
            icon: hasMenuAlert
                ? const badges.Badge(
                    badgeAnimation: badges.BadgeAnimation.scale(),
                    child: Icon(Icons.menu_rounded, size: 30),
                  )
                : const Icon(
                    Icons.menu_rounded,
                    size: 30,
                  ),
            label: JPStrings.MENU,
          ),
        ],
        currentIndex: navigationShell.currentIndex,
        onTap: (int index) => _onTap(context, index),
      ),
    );
  }

  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
