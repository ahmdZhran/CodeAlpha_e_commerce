import 'package:e_commerce_app/core/utils/connectivity_controller.dart';
import 'package:e_commerce_app/core/widgets/no_connection_widget.dart';
import 'package:flutter/material.dart';

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityControlleor.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return MaterialApp(
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
