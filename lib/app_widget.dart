import 'package:flutter/material.dart';
import 'package:projeto_teste/app_controller.dart';
import 'package:projeto_teste/login_page.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  final String? title;

  const AppWidget({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: ((context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.amber,
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const LoginPage(),
            '/home': (context) => const HomePage()
          },
        );
      }),
    );
  }
}
