import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../widgets/auto_login_widget.dart';
import '../widgets/bio_login_widget.dart';
import '../widgets/id_textfield_widget.dart';
import '../widgets/login_btn.dart';
import '../widgets/logo_widget.dart';
import '../widgets/pw_textfield_widget.dart';
import '../widgets/version_widget.dart';
import '../widgets/web_to_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: const LogoWidget(),
                ),
                Gap(20.h),
                const IDFormWidget(),
                Gap(10.h),
                const PWFormWidget(),
                Gap(20.h),
                const AutoLoginWidget(),
                const BioSwitchWidget(),
                Gap(20.h),
                const LoginBtn(),
                Gap(20.h),
                const WebToWidget(),
                Gap(90.h),
                const VersionWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
