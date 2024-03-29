import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/local/jp_strings.dart';
import '../../data/models/operation_condition.dart';
import '../providers/operation_condition_provider.dart';
import 'detail_page_tab1_list_item.dart';

class DetailPageList extends ConsumerStatefulWidget {
  const DetailPageList({super.key});

  @override
  ConsumerState<DetailPageList> createState() => _DetailPageListState();
}

class _DetailPageListState extends ConsumerState<DetailPageList> {
  @override
  Widget build(BuildContext context) {
    final operationConditionList = ref.watch(operationConditionsProvider);

    return operationConditionList.isEmpty
        ? Padding(
            padding: EdgeInsets.all(16.w),
            child: SizedBox(
              width: double.maxFinite,
              child: Text(
                JPStrings.DETAIL_SEGMENTTAB_1_EMPTY,
                style: Theme.of(context).textTheme.titleMedium,
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
