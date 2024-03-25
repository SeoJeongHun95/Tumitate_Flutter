import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../widgets/rate_list_widget.dart';

class ReservePage extends ConsumerWidget {
  const ReservePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              context.goNamed("ReserveSetting");
            },
            icon: Icon(
              Icons.settings_outlined,
              color: Colors.lightGreen,
              size: 24.sp,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: const RateListWidget(),
        ),
      ),
    );
  }
}
