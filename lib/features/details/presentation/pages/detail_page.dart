import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/local/jp_strings.dart';
import 'detail_page_tab_1.dart';
import 'detail_page_tab_2.dart';
import 'detail_page_tab_3.dart';
import 'detail_page_tab_4.dart';

final List<SegmentTab> _tabs = [
  const SegmentTab(label: JPStrings.SEGMENTTAB_1),
  const SegmentTab(label: JPStrings.SEGMENTTAB_2),
  const SegmentTab(label: JPStrings.SEGMENTTAB_3),
  const SegmentTab(label: JPStrings.SEGMENTTAB_4),
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
