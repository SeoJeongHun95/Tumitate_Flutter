import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/login_page/auto_login_switch_provider.dart';
import '../providers/login_page/bio_login_switch_provider.dart';
import '../providers/login_page/pw_save_check_provider.dart';

class AutoLoginWidget extends ConsumerWidget {
  const AutoLoginWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final autoLoginSwitchState = ref.watch(autoLoginSwitchProvider);
    final pwSaveCheckState = ref.watch(pwSaveCheckProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "自動ログイン",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Switch(
          value: autoLoginSwitchState,
          onChanged: pwSaveCheckState
              ? (value) {
                  ref.read(autoLoginSwitchProvider.notifier).setBool(value);

                  if (value) {
                    ref.read(bioLoginSwitchProvider.notifier).setBool(false);
                  }
                }
              : null,
        ),
      ],
    );
  }
}
