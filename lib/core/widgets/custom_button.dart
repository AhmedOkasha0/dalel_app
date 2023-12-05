import 'package:dalel_app1/core/utils/app_color.dart';
import 'package:dalel_app1/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color? color;

  const CustomButton(
      {super.key, this.onPressed, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        width: 56.w,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color ?? AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: onPressed,
          child: Text(
            text,
            style: CustomTextStyles.text18.copyWith(color: Colors.white),
          ),
        ));
  }
}
