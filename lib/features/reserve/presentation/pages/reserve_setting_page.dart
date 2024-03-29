import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/local/jp_strings.dart';
import '../providers/rate_list_provider.dart';
import '../providers/rate_setting_provider.dart';
import '../widgets/rate_liset_setting_widget.dart';

class ReserveSettingPage extends ConsumerWidget {
  const ReserveSettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rateSettingList = ref.watch(rateSettingListProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "${JPStrings.SHOW} (${rateSettingList.where((element) => element.show).toList().length})",
          style: TextStyle(
            color: rateSettingList
                        .where((element) => element.show)
                        .toList()
                        .length ==
                    rateSettingList.length
                ? Colors.black
                : Colors.red,
            fontSize: 14.sp,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              ref
                  .read(rateListProvider.notifier)
                  .chageSetting(changeList: rateSettingList);
              Navigator.of(context).pop();
            },
            child: Text(
              JPStrings.DONE,
              style: TextStyle(
                color: Colors.lightGreen,
                fontSize: 14.sp,
              ),
            ),
          ),
        ],
      ),
      body: const SafeArea(child: RateListSettingWidget()),
    );
  }
}
