import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/menu/presentation/providers/menu_badge_provider.dart';

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
              icon: Icon(Icons.price_change_outlined, size: 30), label: '積立'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long_rounded, size: 30), label: '明細'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.savings_outlined, size: 30), label: '積立状況'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.restore_rounded, size: 30), label: '履歴'),
          BottomNavigationBarItem(
            icon: hasMenuAlert
                ? const badges.Badge(
                    child: Icon(Icons.menu_rounded, size: 30),
                  )
                : const Icon(Icons.menu_rounded, size: 30),
            label: 'メニュー',
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
