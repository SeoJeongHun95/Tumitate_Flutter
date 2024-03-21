import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Colors.lightGreen,
        selectedFontSize: 14,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedItemColor: Colors.grey[550],
        unselectedFontSize: 14,
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.price_change_outlined, size: 28), label: '積立'),
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long_rounded, size: 28), label: '明細'),
          BottomNavigationBarItem(
              icon: Icon(Icons.savings_outlined, size: 28), label: '積立状況'),
          BottomNavigationBarItem(
              icon: Icon(Icons.restore_rounded, size: 28), label: '履歴'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_rounded, size: 28), label: 'メニュー'),
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
