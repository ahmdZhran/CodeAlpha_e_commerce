import 'package:e_commerce_app/core/extentions/extentions_helper.dart';
import 'package:e_commerce_app/core/languages/lang_keys.dart';
import 'package:e_commerce_app/core/utils/font_wieght_styles.dart';
import 'package:e_commerce_app/core/widgets/animation/animate_do_widget.dart';
import 'package:e_commerce_app/core/widgets/custom_linear_button.dart';
import 'package:e_commerce_app/core/widgets/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 200,
      child: CustomLinearButton(
        height: 60,
        width: double.infinity,
        onPressed: () {},
        child: TextApp(
          text: context.translate(LangKeys.login),
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightStyle.bold,
          ),
        ),
      ),
    );
  }
}
