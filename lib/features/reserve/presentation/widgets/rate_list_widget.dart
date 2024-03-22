import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

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
    return Row(
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
                style: TextStyle(
                  fontSize: 12.w,
                  fontWeight: FontWeight.w600,
                ),
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
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
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
                                ? Colors.blue
                                : double.parse(rate.diff) < 0
                                    ? Colors.red
                                    : Colors.grey,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            rate.diff,
                            style: TextStyle(
                              color: double.parse(rate.diff) > 0
                                  ? Colors.blue
                                  : double.parse(rate.diff) < 0
                                      ? Colors.red
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
                        const Text(
                          "H",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Gap(4.w),
                        Text(
                          rate.high,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "L",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Gap(4.w),
                        Text(
                          rate.low,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
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
    );
  }
}