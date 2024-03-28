import 'package:flutter/material.dart';

import '../widgets/detail_page_tab1_header_widget.dart';
import '../widgets/detail_page_tab1_list.dart';

class DetailPageTab1 extends StatelessWidget {
  const DetailPageTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TopTable(),
        DetailPageList(),
      ],
    );
  }
}
