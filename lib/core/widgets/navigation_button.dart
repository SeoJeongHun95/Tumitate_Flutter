import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavButton extends StatelessWidget {
  NavButton({super.key, required this.title, required this.page});
  final String title;
  final Widget page;

  final double btnWidth = 160.w;
  final double btnHeight = 40.h;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          fixedSize: Size(btnWidth, btnHeight),
        ),
        onPressed: () {},
        child: Text(title),
      ),
    );
  }
}
