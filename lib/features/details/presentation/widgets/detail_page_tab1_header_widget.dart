import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/local/jp_strings.dart';

class TopHeaderWidget extends StatelessWidget {
  const TopHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.h),
      child: Container(
        color: const Color.fromRGBO(238, 247, 218, 1),
        height: 40.h,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: const Center(
                  child: Text(
                    JPStrings.DETAIL_SEGMENTTAB_1_HEADER_TUKA,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey),
                          bottom: BorderSide(color: Colors.grey),
                          right: BorderSide(color: Colors.grey),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          JPStrings
                              .DETAIL_SEGMENTTAB_1_HEADER_KONYUZANTAKA_GAIKA,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey),
                          right: BorderSide(color: Colors.grey),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          JPStrings.DETAIL_SEGMENTTAB_1_HEADER_KONYUZANTAKA_ENN,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey),
                          bottom: BorderSide(color: Colors.grey),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          JPStrings.DETAIL_SEGMENTTAB_1_HEADER_ZIKANHYOUKAGAKU,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          JPStrings.DETAIL_SEGMENTTAB_1_HEADER_SASIHIKISONEKI,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
