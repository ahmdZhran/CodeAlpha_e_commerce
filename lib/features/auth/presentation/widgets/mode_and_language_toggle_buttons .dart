import 'package:e_commerce_app/core/app/app_cubit/cubit/app_cubit.dart';
import 'package:e_commerce_app/core/extentions/extentions_helper.dart';
import 'package:e_commerce_app/core/languages/app_localizations.dart';
import 'package:e_commerce_app/core/languages/lang_keys.dart';
import 'package:e_commerce_app/core/widgets/animation/animate_do_widget.dart';
import 'package:e_commerce_app/core/widgets/custom_linear_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/text_app.dart';

class ModeAndLanguageToggleButtons extends StatelessWidget {
  const ModeAndLanguageToggleButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder(
          bloc: cubit,
          builder: (context, state) {
            return CustomFadeInRight(
              duration: 400,
              child: CustomLinearButton(
                onPressed: cubit.changeThemeAppMode,
                child: Icon(
                  cubit.isDark
                      ? Icons.dark_mode_rounded
                      : Icons.light_mode_rounded,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
        CustomFadeInLeft(
          duration: 400,
          child: CustomLinearButton(
            height: 44.h,
            width: 100,
            onPressed: () {
              if (AppLocalizations.of(context)!.isEnLocale) {
                cubit.toArabic();
              } else {
                cubit.toEnglish();
              }
            },
            child: TextApp(
              text: context.translate(LangKeys.language),
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
