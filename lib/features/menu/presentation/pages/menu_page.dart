import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../auth/presentation/providers/login_state_provider.dart';
import '../../../details/presentation/providers/operation_condition_provider.dart';
import '../providers/menu_badge_provider.dart';

class MenuPage extends ConsumerWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Debug Page"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text("Bage Alert"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () =>
                        ref.read(menuBadgeProvider.notifier).addBadgeCount(),
                    child: const Icon(Icons.add),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        ref.read(menuBadgeProvider.notifier).removeBadgeCount(),
                    child: const Icon(Icons.remove),
                  )
                ],
              ),
              Gap(10.h),
              const Text("Login State"),
              ElevatedButton(
                onPressed: () => ref.read(authProvider.notifier).logout(),
                child: Text(
                  "ログアウト",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Gap(10.h),
              const Text("運用状況一覧 初期化"),
              ElevatedButton(
                onPressed: () =>
                    ref.read(operationConditionsProvider.notifier).reset(),
                child: Text(
                  "Reset",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
