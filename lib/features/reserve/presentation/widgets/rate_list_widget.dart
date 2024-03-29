import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:tumitate_flutter/core/theme/local/jp_strings.dart';
import 'package:tumitate_flutter/features/reserve/presentation/widgets/rate_menu_dialog.dart';

import '../../data/models/rate.dart';
import '../providers/rate_list_provider.dart';

class RateListWidget extends ConsumerWidget {
  const RateListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rateList = ref.watch(rateListProvider);

    return ListView.separated(
      itemBuilder: (context, index) {
        final Rate rate = rateList[index];
        return RateListItem(rate: rate);
      },
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey.shade200,
      ),
      itemCount: rateList.length,
    );
  }
}

class RateListItem extends StatelessWidget {
  const RateListItem({super.key, required this.rate});
  final Rate rate;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => RateMenuDialog(rate: rate),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Image.asset(
                  "lib/core/assets/img/flg/${rate.meigaraId.toLowerCase()}.png",
                  width: 40.w,
                  height: 25.h,
                  fit: BoxFit.fill,
                  errorBuilder: (context, error, stackTrace) =>
                      Text(error.toString()),
                ),
                Gap(4.w),
                Text(
                  rate.meigaraMei,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Image.asset(
                "lib/core/assets/img/chart.png",
                width: 40.w,
                height: 25.h,
                fit: BoxFit.fill,
                errorBuilder: (context, error, stackTrace) =>
                    Text(error.toString()),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          rate.offer,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                          width: 50.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: double.parse(rate.diff) > 0
                                  ? Colors.red
                                  : double.parse(rate.diff) < 0
                                      ? Colors.blue
                                      : Colors.grey,
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              rate.diff,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: double.parse(rate.diff) > 0
                                        ? Colors.red
                                        : double.parse(rate.diff) < 0
                                            ? Colors.blue
                                            : Colors.grey,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            JPStrings.HIGH,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                          ),
                          Gap(4.w),
                          Text(
                            rate.high,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            JPStrings.LOW,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                          ),
                          Gap(4.w),
                          Text(
                            rate.low,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
