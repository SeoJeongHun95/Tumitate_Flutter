import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/login_page/auto_login_switch_provider.dart';
import '../providers/login_page/bio_login_switch_provider.dart';
import '../providers/login_page/pw_save_check_provider.dart';

class BioSwitchWidget extends ConsumerWidget {
  const BioSwitchWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bioLoginToggleState = ref.watch(bioLoginSwitchProvider);
    final pwSaveCheckState = ref.watch(pwSaveCheckProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "生体確認でログイン",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Switch(
          value: bioLoginToggleState,
          onChanged: pwSaveCheckState
              ? (value) {
                  ref.watch(bioLoginSwitchProvider.notifier).setBool(value);

                  if (value) {
                    ref.read(autoLoginSwitchProvider.notifier).setBool(false);
                  }
                }
              : null,
        ),
      ],
    );
  }
}
