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
        routerConfig: route,
        debugShowCheckedModeBanner: false,
        title: 'Tumitate Flutter',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: TumitateColors().dGreen,
            surface: Colors.white,
          ),
          textTheme: TextTheme(
            bodyMedium: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 12.sp),
          ),
          appBarTheme:
              const AppBarTheme().copyWith(backgroundColor: Colors.white),
          useMaterial3: true,
        ),
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1)),
          child: child!,
        ),
      ),
    );
  }
}
