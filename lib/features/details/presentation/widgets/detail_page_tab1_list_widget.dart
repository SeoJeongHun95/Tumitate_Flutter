import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/local/jp_strings.dart';
import '../../data/models/operation_condition.dart';
import '../providers/operation_condition_provider.dart';
import 'detail_page_tab1_list_item.dart';

class DetailPageListWidget extends ConsumerStatefulWidget {
  const DetailPageListWidget({super.key});

  @override
  ConsumerState<DetailPageListWidget> createState() =>
      _DetailPageListWidgetState();
}

class _DetailPageListWidgetState extends ConsumerState<DetailPageListWidget> {
  @override
  Widget build(BuildContext context) {
    final operationConditionList = ref.watch(operationConditionsProvider);

    return operationConditionList.isEmpty
        ? Padding(
            padding: EdgeInsets.all(16.w),
            child: const SizedBox(
              width: double.maxFinite,
              child: Text(
                JPStrings.DETAIL_SEGMENTTAB_1_EMPTY,
              ),
            ),
          )
        : ListView.builder(
            itemCount: operationConditionList.length,
            itemBuilder: (context, index) {
              final OperationCondition oc = operationConditionList[index];

              return DetailPageListItem(oc: oc);
            },
          );
  }
}
