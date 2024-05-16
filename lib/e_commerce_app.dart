import 'package:e_commerce_app/core/utils/connectivity_controller.dart';
import 'package:e_commerce_app/core/utils/font_helper.dart';
import 'package:e_commerce_app/core/utils/font_wieght_styles.dart';
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
                ConnectivityControlleor.instance.init();
                return widget!;
              },
              home: Scaffold(
                appBar: AppBar(
                  title: const Text(
                    'E commers',
                    style: TextStyle(fontFamily: FontFamilyName.arabicFont),
                  ),
                ),
                body: Center(
                  child: Column(children: [
                    Text(
                      'English',
                      style: TextStyle(
                        fontFamily: FontFamilyName.englishFont,
                        fontWeight: FontWieghtStyle.bold,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      'عربي',
                      style: TextStyle(
                        fontFamily: FontFamilyName.arabicFont,
                        fontWeight: FontWieghtStyle.bold,
                        fontSize: 40,
                      ),
                    ),
                  ]),
                ),
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
