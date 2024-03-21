import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/router/router.dart';
import 'core/theme/color/tumitate_colors.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.watch(routerProvider);

    return ScreenUtilInit(
      builder: (context, child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Tumitate Flutter',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: TumitateColors().dGreen,
            background: Colors.white,
          ),
          appBarTheme:
              const AppBarTheme().copyWith(backgroundColor: Colors.white),
          useMaterial3: true,
        ),
        routerConfig: route,
      ),
    );
  }
}
