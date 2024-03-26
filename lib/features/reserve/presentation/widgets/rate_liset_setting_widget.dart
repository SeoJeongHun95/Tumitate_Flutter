import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../providers/rate_setting_provider.dart';

class RateListSettingWidget extends ConsumerStatefulWidget {
  const RateListSettingWidget({super.key});

  @override
  ConsumerState<RateListSettingWidget> createState() =>
      _RateListSettingWidgetState();
}

class _RateListSettingWidgetState extends ConsumerState<RateListSettingWidget> {
  @override
  Widget build(BuildContext context) {
    final rateSettingList = ref.watch(rateSettingListProvider);

    return ReorderableListView(
      onReorder: (oldIndex, newIndex) {
        if (oldIndex < newIndex) {
          newIndex -= 1;
        }
        setState(() {
          rateSettingList.insert(newIndex, rateSettingList.removeAt(oldIndex));
        });
      },
      onReorderEnd: (index) => ref
          .read(rateSettingListProvider.notifier)
          .chageListSetting(rateSettingList),
      children: [
        for (int index = 0; index < rateSettingList.length; index += 1)
          Container(
            key: Key("$index"),
            decoration: BoxDecoration(
              border: BorderDirectional(
                bottom: BorderSide(color: Colors.grey.shade200),
              ),
            ),
            child: CheckboxListTile(
              value: rateSettingList[index].show,
              checkboxShape: const CircleBorder(),
              activeColor: Colors.lightGreen,
              controlAffinity: ListTileControlAffinity.leading,
              title: Row(
                children: [
                  Image.asset(
                    "lib/core/assets/img/flg/${rateSettingList[index].meigaraId.toLowerCase()}.png",
                    width: 40.w,
                    height: 25.h,
                    fit: BoxFit.fill,
                    errorBuilder: (context, error, stackTrace) =>
                        Text(error.toString()),
                  ),
                  Gap(4.w),
                  Text(
                    rateSettingList[index].meigaraMei,
                    style: TextStyle(
                      fontSize: 12.w,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              onChanged: (value) =>
                  ref.read(rateSettingListProvider.notifier).changeShow(
                        value!,
                        rateSettingList[index].meigaraId,
                      ),
              secondary: const Icon(
                Icons.drag_indicator_rounded,
                color: Colors.lightGreen,
              ),
            ),
          ),
      ],
    );
  }
}
