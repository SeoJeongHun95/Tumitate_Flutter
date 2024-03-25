// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:gap/gap.dart';

// class RateListSettingWidget extends ConsumerWidget {
//   const RateListSettingWidget({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return ReorderableListView(
//       onReorder: (oldIndex, newIndex) {},
//       children: [
//         for (int index = 0; index < rateList.length; index += 1)
//           Container(
//             key: Key("$index"),
//             decoration: BoxDecoration(
//               border: BorderDirectional(
//                 bottom: BorderSide(color: Colors.grey.shade200),
//               ),
//             ),
//             child: ListTile(
//               title: Row(
//                 children: [
//                   Image.asset(
//                     "lib/core/assets/img/flg/${rateList[index].rate.meigaraId.toLowerCase()}.png",
//                     width: 40.w,
//                     height: 25.h,
//                     fit: BoxFit.fill,
//                     errorBuilder: (context, error, stackTrace) =>
//                         Text(error.toString()),
//                   ),
//                   Gap(4.w),
//                   Text(
//                     rateList[index].rate.meigaraMei,
//                     style: TextStyle(
//                       fontSize: 12.w,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//       ],
//     );
//   }
// }
