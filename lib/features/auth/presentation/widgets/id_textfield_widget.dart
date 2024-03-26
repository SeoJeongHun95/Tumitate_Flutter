import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/theme/local/jp_strings.dart';
import '../providers/login_page/auto_login_switch_provider.dart';
import '../providers/login_page/bio_login_switch_provider.dart';
import '../providers/login_page/id_save_check_provider.dart';
import '../providers/login_page/pw_save_check_provider.dart';

class IDFormWidget extends ConsumerStatefulWidget {
  const IDFormWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _IDFormWidgetState();
}

class _IDFormWidgetState extends ConsumerState<IDFormWidget> {
  final idCtrl = TextEditingController();

  @override
  void dispose() {
    idCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final idSaveCheckState = ref.watch(idSaveCheckProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Text(
            JPStrings.LOGIN_ID,
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
                controller: idCtrl,
                maxLength: 10,
                maxLines: 1,
                //半角数字
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[\x30-\x49]'),
                  )
                ],
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(),
                  isDense: true,
                  //MaxLenth Count 없애기
                  counterText: "",
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
                      value: idSaveCheckState,
                      side: const BorderSide(width: 0.56),
                      onChanged: (value) {
                        ref
                            .read(idSaveCheckProvider.notifier)
                            .setBool(value ?? false);

                        //id保存【ON/OFF】によって、他のStateに影響する。
                        if (value == false) {
                          ref.read(pwSaveCheckProvider.notifier).setBool(false);
                          ref
                              .read(autoLoginSwitchProvider.notifier)
                              .setBool(false);
                          ref
                              .read(bioLoginSwitchProvider.notifier)
                              .setBool(false);
                        }
                      },
                    ),
                  ),
                  Text(
                    JPStrings.PRESERVATION,
                    style: Theme.of(context).textTheme.titleMedium,
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
