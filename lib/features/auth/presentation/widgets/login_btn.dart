import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/local/jp_strings.dart';
import '../providers/login_state_provider.dart';

class LoginBtn extends ConsumerWidget {
  const LoginBtn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const double btnWidth = double.maxFinite;
    final double btnHeight = 36.h;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        fixedSize: Size(btnWidth, btnHeight),
      ),
      onPressed: () => ref.read(authProvider.notifier).login(),
      child: const Text(JPStrings.LOGIN),
    );
  }
}
