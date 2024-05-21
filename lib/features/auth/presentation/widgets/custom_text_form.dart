import 'package:e_commerce_app/core/extentions/extentions_helper.dart';
import 'package:e_commerce_app/core/languages/lang_keys.dart';
import 'package:e_commerce_app/core/utils/app_regex.dart';
import 'package:e_commerce_app/core/widgets/animation/animate_do_widget.dart';
import 'package:e_commerce_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextForm extends StatefulWidget {
  const CustomTextForm({super.key});

  @override
  State<CustomTextForm> createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
  bool isPasswordShown = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomFadeInRight(
            duration: 200,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: context.translate(LangKeys.fullName),
              keyboardType: TextInputType.name,
              validator: (value) {
                if (AppRegex.isEmailValid('value')) {
                  return context.translate(LangKeys.validEmail);
                } else {
                  return null;
                }
              },
            ),
          ),
          SizedBox(height: 25.h),
          CustomFadeInRight(
            duration: 200,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: context.translate(LangKeys.email),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (AppRegex.isEmailValid('value')) {
                  return context.translate(LangKeys.validEmail);
                } else {
                  return null;
                }
              },
            ),
          ),
          SizedBox(height: 25.h),
          CustomFadeInRight(
            duration: 200,
            child: CustomTextField(
              obscureText: isPasswordShown,
              controller: TextEditingController(),
              hintText: context.translate(LangKeys.password),
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return context.translate(LangKeys.validPasswrod);
                } else {
                  return null;
                }
              },
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isPasswordShown = !isPasswordShown;
                  });
                },
                icon: Icon(
                  isPasswordShown ? Icons.visibility_off : Icons.visibility,
                  color: context.color.textColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
