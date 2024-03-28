import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color/tumitate_colors.dart';
import '../../data/models/operation_condition.dart';

class DetailPageListItem extends StatelessWidget {
  const DetailPageListItem({super.key, required this.oc});

  final OperationCondition oc;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      iconColor: Colors.green,
      collapsedIconColor: Colors.green,
      tilePadding: EdgeInsets.symmetric(horizontal: 10.w),
      leading: SizedBox(
        width: 56.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              width: 16 * 3.w,
              height: 9 * 3.w,
              "lib/core/assets/img/flg/${oc.id}.png",
              fit: BoxFit.fill,
              errorBuilder: (context, error, stackTrace) => Text(
                error.toString(),
              ),
            ),
            Text(
              oc.kanjiMei,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
      title: SizedBox(
        height: 40.h,
        width: double.maxFinite,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [Text(oc.maisuu), Text(oc.kansanMaisuu)],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(oc.jikaHyoukagaku),
                  Text(
                    oc.torihikiSoneki,
                    style: const TextStyle(color: Colors.green),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10.w),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
            ),
            width: double.maxFinite,
            child: Padding(
              padding: EdgeInsets.all(8.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: TumitateColors().btnGreen,
                          foregroundColor: Colors.black,
                        ),
                        onPressed: () {},
                        child: const Text("売却"),
                      ),
                    ],
                  ),
                  Divider(color: Colors.grey[300]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [const Text("投資効率"), Text(oc.leverage)],
                  ),
                  Divider(color: Colors.grey[300]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("購入残高（外貨）"),
                      Text("${oc.maisuu} ${oc.kanjiMei}")
                    ],
                  ),
                  Divider(color: Colors.grey[300]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("購入残高（円換算）"),
                      Row(children: [Text(oc.kansanMaisuu), const Text(" 円")]),
                    ],
                  ),
                  Divider(color: Colors.grey[300]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("購入平均価格"),
                      Row(children: [Text(oc.seirituSP), const Text(" 円")]),
                    ],
                  ),
                  Divider(color: Colors.grey[300]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("評価価格"),
                      Row(children: [Text(oc.bid), const Text(" 円")]),
                    ],
                  ),
                  Divider(color: Colors.grey[300]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("評価損益"),
                      Row(children: [
                        Text(oc.jikaHyoukagaku,
                            style: const TextStyle(color: Colors.green)),
                        const Text(" 円")
                      ]),
                    ],
                  ),
                  Divider(color: Colors.grey[300]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("スワップポイント"),
                      Row(children: [
                        Text(oc.swapPoint,
                            style: const TextStyle(color: Colors.green)),
                        const Text(" 円")
                      ])
                    ],
                  ),
                  Divider(color: Colors.grey[300]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("取引必要証拠金"),
                      Row(children: [
                        Text(oc.hituyouSyoukokin),
                        const Text(" 円")
                      ])
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
