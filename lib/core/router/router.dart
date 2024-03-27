import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/page_not_found.dart';
import '../../features/auth/presentation/providers/login_state_provider.dart';
import '../../features/conditions/presentation/pages/condition_page.dart';
import '../../features/details/presentation/pages/detail_page.dart';
import '../../features/menu/presentation/pages/menu_page.dart';
import '../../features/record/presentation/pages/record_page.dart';
import '../../features/reserve/presentation/pages/reserve_page.dart';
import '../../features/reserve/presentation/pages/reserve_setting_page.dart';
import 'router_strings.dart';
import 'scaffold_with_nav_bar.dart';

part 'router.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final reserveNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: RouterStrings.DEBUG_LABEL_REVERSE);
final detailsNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: RouterStrings.DEBUG_LABEL_DETAIL);
final conditionNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: RouterStrings.DEBUG_LABEL_CONDITION);
final recordNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: RouterStrings.DEBUG_LABEL_RECORD);
final menuNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: RouterStrings.DEBUG_LABEL_MENU);

@riverpod
GoRouter router(RouterRef ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    initialLocation: RouterStrings.PATH_INITIONAL,
    navigatorKey: rootNavigatorKey,
    redirect: (context, state) {
      //로그인 상태인가 아닌가를 확인
      final auth = authState;
      final signed = state.matchedLocation == RouterStrings.PATH_LOGIN;
      //비로그인상태인 경우
      if (!auth) return signed ? null : RouterStrings.PATH_LOGIN;

      return null;
    },
    routes: [
      GoRoute(
        path: RouterStrings.PATH_LOGIN,
        name: RouterStrings.NAME_LOGIN,
        builder: (context, state) => const LoginPage(),
      ),
      StatefulShellRoute.indexedStack(
        branches: [
          StatefulShellBranch(
            navigatorKey: reserveNavigatorKey,
            routes: [
              GoRoute(
                path: RouterStrings.PATH_RESERVE,
                name: RouterStrings.NAME_RESERVE,
                builder: (context, state) => const ReservePage(),
                routes: [
                  GoRoute(
                    parentNavigatorKey: rootNavigatorKey,
                    path: RouterStrings.PATH_RESERVE_SETTING,
                    name: RouterStrings.NAME_RESERVE_SETTING,
                    builder: (context, state) => const ReserveSettingPage(),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: detailsNavigatorKey,
            routes: [
              GoRoute(
                path: RouterStrings.PATH_DETAIL,
                name: RouterStrings.NAME_DETAIL,
                builder: (context, state) => const DetailPage(),
                routes: const [],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: conditionNavigatorKey,
            routes: [
              GoRoute(
                path: RouterStrings.PATH_INITIONAL,
                name: RouterStrings.NAME_INITIONAL,
                builder: (context, state) => const ConditionPage(),
                routes: const [],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: recordNavigatorKey,
            routes: [
              GoRoute(
                path: RouterStrings.PATH_RECORD,
                name: RouterStrings.NAME_RECORD,
                builder: (context, state) => const RecordPage(),
                routes: const [],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: menuNavigatorKey,
            routes: [
              GoRoute(
                path: RouterStrings.PATH_MENU,
                name: RouterStrings.NAME_MENU,
                builder: (context, state) => const MenuPage(),
                routes: const [],
              ),
            ],
          ),
        ],
        builder: (context, state, navigationShell) =>
            ScaffoldWithNavBar(navigationShell: navigationShell),
      ),
    ],
    errorBuilder: (context, state) => PageNotFound(
      errMsg: state.error.toString(),
    ),
  );
}
