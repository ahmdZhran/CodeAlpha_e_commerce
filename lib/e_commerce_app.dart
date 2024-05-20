import 'package:e_commerce_app/core/app/app_cubit/cubit/app_cubit.dart';
import 'package:e_commerce_app/core/di/dependency_injector.dart';
import 'package:e_commerce_app/core/services/pref_keys.dart';
import 'package:e_commerce_app/core/services/shared_pref.dart';
import 'package:e_commerce_app/core/theme/app_theme.dart';
import 'package:e_commerce_app/core/router/app_router.dart';
import 'package:e_commerce_app/core/utils/connectivity_controller.dart';
import 'package:e_commerce_app/core/languages/app_localizations_setup.dart';
import 'package:e_commerce_app/core/widgets/no_connection_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityControlleor.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return BlocProvider(
            create: (context) => getIt<AppCubit>()
              ..changeThemeAppMode(
                sharedMode: SharedPref().getBoolean(PrefKeys.themeMode),
              )
              ..getSaveLanguage(),
            child: ScreenUtilInit(
              designSize: Size(375, 812),
              child: BlocBuilder<AppCubit, AppState>(
                builder: (context, state) {
                  final cubit = context.read<AppCubit>();
                  return MaterialApp(
                    title: 'E-Commerce',
                    debugShowCheckedModeBanner: false,
                    theme: cubit.isDark ? darkTheme() : lightThem(),
                    builder: (context, widget) {
                      return GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: Scaffold(
                          body: Builder(
                            builder: (context) {
                              ConnectivityControlleor.instance.init();
                              return widget!;
                            },
                          ),
                        ),
                      );
                    },
                    onGenerateRoute: AppRouter.onGenerateRoute,
                    initialRoute: AppRouter.signInView,
                    locale: Locale('en'),
                    supportedLocales: AppLocalizationsSetup.supportedLocales,
                    localeResolutionCallback:
                        AppLocalizationsSetup.localeResolutionCallback,
                    localizationsDelegates:
                        AppLocalizationsSetup.localizationsDelegates,
                  );
                },
              ),
            ),
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: NoConnectionWidget(),
          );
        }
      },
    );
  }
}
