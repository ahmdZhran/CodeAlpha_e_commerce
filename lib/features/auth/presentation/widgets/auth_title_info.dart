import 'package:e_commerce_app/core/extentions/extentions_helper.dart';
import 'package:e_commerce_app/core/utils/font_family_center.dart';
import 'package:e_commerce_app/core/widgets/animation/animate_do_widget.dart';
import 'package:e_commerce_app/core/widgets/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/font_wieght_styles.dart';

class AuthTileInfo extends StatelessWidget {
  const AuthTileInfo(
      {super.key, required this.title, required this.description});
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: Column(
        children: [
          TextApp(
            text: title,
            theme: context.textStyle.copyWith(
              fontSize: 24.sp,
              color: context.color.textColor,
              fontWeight: FontWeightStyle.bold,
            ),
          ),
          SizedBox(height: 10.h),
          TextApp(
            text: description,
            theme: context.textStyle.copyWith(
                fontSize: 14.sp,
                color: context.color.textColor,
                fontWeight: FontWeightStyle.meduim),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
