import 'package:flutter/material.dart';
import 'package:pay/shared/themes/app_colors.dart';
import 'package:pay/shared/themes/app_images.dart';
import 'package:pay/shared/themes/app_text_styles.dart';
import 'package:pay/shared/widgets/Social%20Login/social_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              color: AppColors.primary,
              width: size.width,
              height: size.height * 0.36,
            ),
            Positioned(
                top: 40,
                left: 0,
                right: 0,
                child: Image.asset(
                  AppImages.person,
                  width: 208,
                  height: 300,
                )),
            Positioned(
                bottom: size.height * 0.07,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.logomini),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 30, left: 70, right: 70, bottom: 40),
                      child: Text(
                        "Organize seus boletos em um só lugar",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.titleHome,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40, left: 40),
                      child: SocialLogin(
                        onTap: () {
                          // ignore: avoid_print
                          print('a');
                        },
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
