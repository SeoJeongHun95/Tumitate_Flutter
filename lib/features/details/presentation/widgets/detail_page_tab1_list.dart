import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color/tumitate_colors.dart';

class DetailPageList extends StatelessWidget {
  const DetailPageList({super.key});

  @override
  Widget build(BuildContext context) {
    final expansionTileController = ExpansionTileController();

    return ListView(
      shrinkWrap: true,
      children: [
        ExpansionTile(
          tilePadding: EdgeInsets.symmetric(horizontal: 10.w),
          controller: expansionTileController,
          leading: SizedBox(
            width: 56.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Image.asset(
                    width: 40.w,
                    "lib/core/assets/img/flg/usa.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  "米ドル",
                  style: Theme.of(context).textTheme.titleMedium,
                )
              ],
            ),
          ),
          title: SizedBox(
            height: 60.h,
            width: double.maxFinite,
            child: const Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [Text("25,174,13"), Text("3,545,997.7428")],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("3,645,868.5512"),
                      Text(
                        "99,870.8084",
                        style: TextStyle(color: Colors.green),
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("投資効率"), Text("3倍")],
                      ),
                      Divider(color: Colors.grey[300]),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("購入残高（外貨）"), Text("25,174.13 米ドル")],
                      ),
                      Divider(color: Colors.grey[300]),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("購入残高（円換算）"),
                          Row(children: [Text("3,545,997.7428"), Text(" 円")]),
                        ],
                      ),
                      Divider(color: Colors.grey[300]),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("購入平均価格"),
                          Row(children: [Text("140.8588"), Text(" 円")]),
                        ],
                      ),
                      Divider(color: Colors.grey[300]),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("評価価格"),
                          Row(children: [Text("144.77"), Text(" 円")]),
                        ],
                      ),
                      Divider(color: Colors.grey[300]),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("評価損益"),
                          Row(children: [
                            Text("98,461.0572",
                                style: TextStyle(color: Colors.green)),
                            Text(" 円")
                          ]),
                        ],
                      ),
                      Divider(color: Colors.grey[300]),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("スワップポイント"),
                          Row(children: [
                            Text("1,409.7512",
                                style: TextStyle(color: Colors.green)),
                            Text(" 円")
                          ])
                        ],
                      ),
                      Divider(color: Colors.grey[300]),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("取引必要証拠金"),
                          Row(children: [Text("1,181,999.2477"), Text(" 円")])
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
