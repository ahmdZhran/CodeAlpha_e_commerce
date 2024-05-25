import 'package:e_commerce_app/core/extentions/extentions_helper.dart';
import 'package:e_commerce_app/core/widgets/animation/animate_do_widget.dart';
import 'package:e_commerce_app/core/widgets/show_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/languages/lang_keys.dart';
import '../../../../core/utils/font_wieght_styles.dart';
import '../../../../core/widgets/text_app.dart';
import '../bloc/auth_bloc.dart';
import 'custom_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
      duration: 400,
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            Success: (userRole) {
              ShowToast.showToastSuccessTop(
                context: context,
                message: context.translate(
                  LangKeys.loggedSuccessfully,
                ),
              );
            },
            Failur: (errMessage) {
              ShowToast.showToastErrorTop(
                context: context,
                message: context.translate(
                  errMessage,
                ),
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return CustomButton(
                childOfFadeButton: TextApp(
                    theme: context.textStyle.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeightStyle.bold,
                    ),
                    text: context.translate(LangKeys.login)),
                onPressed: () {
                  _loginValidate(context);
                },
              );
            },
            Loading: () {
              return CustomButton(
                childOfFadeButton: CircularProgressIndicator(
                  color: Colors.white,
                ),
                onPressed: () {},
              );
            },
          );
        },
      ),
    );
  }

  void _loginValidate(BuildContext context) {
    if (context.read<AuthBloc>().formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(const AuthEvent.Login());
    }
  }
}
