import 'package:dalel_app1/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNavBar extends StatelessWidget {
  final VoidCallback onTab;
  const CustomNavBar({super.key, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: onTab,
        child: Text(
          "skipe",
          style: CustomTextStyles.text16
              .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
