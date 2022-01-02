import 'package:flutter/material.dart';
import 'package:pay/shared/themes/app_colors.dart';
import 'package:pay/shared/themes/app_images.dart';
import 'package:pay/shared/themes/app_text_styles.dart';

class SocialLogin extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLogin({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: const Border.fromBorderSide(
                BorderSide(color: AppColors.stroke)),
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(5)),
        height: 56,
        child: Row(
          children: [
            Expanded(flex: 1, child: Image.asset(AppImages.google)),
            Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Entrar com o Google",
                      style: AppTextStyles.buttonGrey,
                    ),
                  ],
                )),
            Expanded(child: Container())
          ],
        ),
      ),
    );
  }
}
