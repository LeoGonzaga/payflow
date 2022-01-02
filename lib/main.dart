import 'package:flutter/material.dart';
import 'package:pay/modules/login/login_page.dart';
import 'package:pay/shared/themes/app_colors.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pay Flow",
      theme: ThemeData(primaryColor: AppColors.primary),
      home: const LoginPage(),
    );
  }
}
