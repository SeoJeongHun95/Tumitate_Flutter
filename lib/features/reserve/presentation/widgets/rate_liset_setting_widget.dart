import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../providers/rate_setting_provider.dart';

class RateListSettingWidget extends ConsumerWidget {
  const RateListSettingWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rateSettingList = ref.watch(rateSettingListProvider);

    return ReorderableListView(
      onReorder: (oldIndex, newIndex) => ref
          .read(rateSettingListProvider.notifier)
          .chageSequnce(oldIndex, newIndex),
      children: [
        for (final rs in rateSettingList)
          Container(
            key: Key(rs.meigaraId),
            decoration: BoxDecoration(
              border: BorderDirectional(
                bottom: BorderSide(color: Colors.grey.shade200),
              ),
            ),
            child: CheckboxListTile(
              value: rs.show,
              checkboxShape: const CircleBorder(),
              side: const BorderSide(color: Colors.grey),
              activeColor: Colors.lightGreen,
              controlAffinity: ListTileControlAffinity.leading,
              title: Row(
                children: [
                  Image.asset(
                    "lib/core/assets/img/flg/${rs.meigaraId.toLowerCase()}.png",
                    width: 40.w,
                    height: 25.h,
                    fit: BoxFit.fill,
                    errorBuilder: (context, error, stackTrace) =>
                        Text(error.toString()),
                  ),
                  Gap(4.w),
                  Text(
                    rs.meigaraMei,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              onChanged: (value) => ref
                  .read(rateSettingListProvider.notifier)
                  .changeShow(rs.meigaraId),
              secondary: const Icon(
                Icons.drag_handle_rounded,
                color: Colors.lightGreen,
              ),
            ),
          ),
      ],
    );
  }
}
