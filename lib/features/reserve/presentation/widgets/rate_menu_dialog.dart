import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/theme/color/tumitate_colors.dart';
import '../../data/models/rate.dart';

class RateMenuDialog extends StatelessWidget {
  const RateMenuDialog({super.key, required this.rate});

  final Rate rate;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, 160.h),
      child: Dialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: SizedBox(
          height: 240.h,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "lib/core/assets/img/flg/${rate.meigaraId.toLowerCase()}.png",
                        width: 40.w,
                        height: 25.h,
                        fit: BoxFit.fill,
                        errorBuilder: (context, error, stackTrace) =>
                            Text(error.toString()),
                      ),
                      Gap(8.w),
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
                Gap(8.h),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: TumitateColors().dGreen,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "定期購入申込",
                    ),
                  ),
                ),
                Gap(8.h),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: TumitateColors().dGreen,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "即時購入",
                    ),
                  ),
                ),
                Gap(8.h),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: TumitateColors().dGreen,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "シミレーション",
                    ),
                  ),
                ),
                Gap(8.h),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      "キャンセル",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
