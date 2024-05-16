import 'package:e_commerce_app/core/router/app_router.dart';
import 'package:e_commerce_app/core/utils/connectivity_controller.dart';
import 'package:e_commerce_app/core/widgets/no_connection_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityControlleor.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return ScreenUtilInit(
            designSize: Size(375, 812),
            child: MaterialApp(
              title: 'E-Commerce',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              builder: (context, widget) {
                return Scaffold(
                  body: Builder(
                    builder: (context) {
                      ConnectivityControlleor.instance.init();
                      return widget!;
                    },
                  ),
                );
              },
              onGenerateRoute: AppRouter.onGenerateRoute,
              initialRoute: AppRouter.testOne,
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
