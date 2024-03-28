import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/detail_page_tab1_list.dart';

import '../widgets/detail_page_tab1_header_widget.dart';

class DetailPageTab1 extends StatelessWidget {
  const DetailPageTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TopHeader(),
        Expanded(child: DetailPageList()),
      ],
    );
  }
}