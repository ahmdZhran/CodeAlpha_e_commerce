import 'package:e_commerce_app/core/extentions/extentions_helper.dart';
import 'package:e_commerce_app/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:e_commerce_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:e_commerce_app/features/auth/presentation/widgets/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/languages/lang_keys.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/utils/font_wieght_styles.dart';
import '../../../../core/widgets/animation/animate_do_widget.dart';
import '../../../../core/widgets/text_app.dart';
import 'mode_and_language_toggle_buttons .dart';
import 'user_avatar.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.w),
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Column(
          children: [
            ModeAndLanguageToggleButtons(),
            SizedBox(height: 50.h),
            AuthTileInfo(
              title: context.translate(LangKeys.signUp),
              description: context.translate(
                LangKeys.signUpWelcome,
              ),
            ),
            SizedBox(height: 30.h),
            UserAvatarWidget(),
            SizedBox(height: 40.h),
            CustomTextForm(),
            SizedBox(height: 30),
            CustomButton(
              childOfFadeButton: TextApp(
                  text: context.translate(LangKeys.signUp),
                  theme: context.textStyle.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeightStyle.bold,
                  )),
              onPressed: () {},
            ),
            SizedBox(height: 60.h),
            GestureDetector(
              onTap: () {
                context.pushNamed(AppRouter.signInView);
              },
              child: CustomFadeInDown(
                duration: 400,
                child: TextApp(
                  text: context.translate(LangKeys.youHaveAccount),
                  theme: context.textStyle.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeightStyle.bold,
                    color: context.color.bluePinkLight,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
