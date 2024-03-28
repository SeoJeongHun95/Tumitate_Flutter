import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'detail_page_tab_1.dart';
import 'detail_page_tab_2.dart';
import 'detail_page_tab_3.dart';
import 'detail_page_tab_4.dart';

final List<SegmentTab> _tabs = [
  const SegmentTab(label: "運用状況"),
  const SegmentTab(label: "定期購入"),
  const SegmentTab(label: "指値注文"),
  const SegmentTab(label: "口座状況"),
];

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.lightGreen, width: 2),
              borderRadius: BorderRadius.circular(22),
            ),
            child: SegmentedTabControl(
              selectedTabTextColor: Colors.white,
              indicatorColor: Colors.lightGreen,
              tabTextColor: Colors.black,
              textStyle: TextStyle(
                fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
              ),
              tabPadding: EdgeInsets.zero,
              squeezeDuration: const Duration(microseconds: 100),
              height: 36.h,
              tabs: _tabs,
            ),
          ),
        ),
        body: const SafeArea(
          child: TabBarView(
            children: [
              DetailPageTab1(),
              DetailPageTab2(),
              DetailPageTab3(),
              DetailPageTab4(),
            ],
          ),
        ),
      ),
    );
  }
}
