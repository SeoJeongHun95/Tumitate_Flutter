import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../providers/login_page/auto_login_switch_provider.dart';
import '../providers/login_page/bio_login_switch_provider.dart';
import '../providers/login_page/id_save_check_provider.dart';
import '../providers/login_page/pw_save_check_provider.dart';

class PWFormWidget extends ConsumerStatefulWidget {
  const PWFormWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PWFormWidgetState();
}

class _PWFormWidgetState extends ConsumerState<PWFormWidget> {
  final pwCtrl = TextEditingController();

  @override
  void dispose() {
    pwCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final idSaveCheckState = ref.watch(idSaveCheckProvider);
    final pwSaveCheckState = ref.watch(pwSaveCheckProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Text(
            "パスワード",
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.start,
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: TextFormField(
                enableInteractiveSelection: false,
                //ASCII 33 ~ 126
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[\x31-\x7E]'),
                  )
                ],
                controller: pwCtrl,
                obscureText: true,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(),
                  isDense: true,
                ),
              ),
            ),
            Gap(8.h),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.scale(
                    scale: 1.4,
                    child: Checkbox(
                      value: pwSaveCheckState,
                      side: BorderSide(
                        width: 0.56,
                        color: idSaveCheckState ? Colors.black : Colors.grey,
                      ),
                      onChanged: idSaveCheckState
                          ? (value) {
                              ref
                                  .read(pwSaveCheckProvider.notifier)
                                  .setBool(value ?? false);

                              //id保存【ON/OFF】によって、他のStateに影響する。
                              if (value == false) {
                                ref
                                    .read(autoLoginSwitchProvider.notifier)
                                    .setBool(false);
                                ref
                                    .read(bioLoginSwitchProvider.notifier)
                                    .setBool(false);
                              }
                            }
                          : null,
                    ),
                  ),
                  Text(
                    "保存",
                    style: idSaveCheckState
                        ? Theme.of(context).textTheme.titleMedium
                        : Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.grey),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
