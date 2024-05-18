import 'package:e_commerce_app/core/extentions/extentions_helper.dart';
import 'package:e_commerce_app/core/languages/lang_keys.dart';
import 'package:e_commerce_app/core/widgets/animation/animate_do_widget.dart';
import 'package:e_commerce_app/core/widgets/custom_linear_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/text_app.dart';

class ModeAndLanguageToggleButtons extends StatelessWidget {
  const ModeAndLanguageToggleButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomFadeInRight(
          duration: 400,
          child: CustomLinearButton(
            onPressed: () {},
            child: Icon(
              Icons.light_mode_rounded,
              color: Colors.white,
            ),
          ),
        ),
        CustomFadeInLeft(
          duration: 400,
          child: CustomLinearButton(
            height: 44.h,
            width: 100,
            onPressed: () {},
            child: TextApp(
              text: context.translate(LangKeys.language),
              theme: context.textStyle
                  .copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}