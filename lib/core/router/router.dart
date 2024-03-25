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
import 'scaffold_with_nav_bar.dart';

part 'router.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter router(RouterRef ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    initialLocation: "/",
    navigatorKey: _rootNavigatorKey,
    redirect: (context, state) {
      //로그인 상태인가 아닌가를 확인
      final auth = authState;

      final signed = state.matchedLocation == "/login";

      //비로그인상태인 경우
      if (!auth) return signed ? null : "/login";

      //로그인 상태인인 경우
      //?? 없어도 가네???
      // if (signed) return "/";

      //리다이렉트로 인한 디폴트값은 없음
      return null;
    },
    routes: [
      GoRoute(
        path: "/login",
        name: "LoginPage",
        builder: (context, state) => const LoginPage(),
      ),
      StatefulShellRoute.indexedStack(
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/tumitate",
                name: "TumitatePage",
                builder: (context, state) => const ReservePage(),
                routes: [
                  GoRoute(
                    path: "reserveSetting",
                    name: "ReserveSetting",
                    builder: (context, state) => const ReserveSettingPage(),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/detail",
                name: "DetailPage",
                builder: (context, state) => const DetailPage(),
                // routes: const [
                // GoRoute(
                //   path: "",
                //   name: RouteName.FIRST_DETAIL,
                //   builder: (context, state) => const FirstDetailsPage(),
                // ),
                // ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/",
                name: "ConditionPage",
                builder: (context, state) => const ConditionPage(),
                // routes: const [
                // GoRoute(
                //   path: "",
                //   name: RouteName.FIRST_DETAIL,
                //   builder: (context, state) => const FirstDetailsPage(),
                // ),
                // ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/record",
                name: "RecordPage",
                builder: (context, state) => const RecordPage(),
                // routes: const [
                // GoRoute(
                //   path: "",
                //   name: RouteName.FIRST_DETAIL,
                //   builder: (context, state) => const FirstDetailsPage(),
                // ),
                // ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/menu",
                name: "MenuPage",
                builder: (context, state) => const MenuPage(),
                // routes: const [
                // GoRoute(
                //   path: "",
                //   name: RouteName.FIRST_DETAIL,
                //   builder: (context, state) => const FirstDetailsPage(),
                // ),
                // ],
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
