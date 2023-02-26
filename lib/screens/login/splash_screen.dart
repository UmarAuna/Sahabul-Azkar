import 'package:flutter/material.dart';
import 'package:sahabul_azkar/utils/app_colors.dart';
import 'package:sahabul_azkar/utils/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.backgroundWhite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            Center(child: Image.asset(AppImages.appIcon)),
            const SizedBox(
              height: 19,
            ),
            const Text(
              'Sahabul Azkar',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Manrope',
                  color: AppColors.textColorDarkBlue,
                  fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            Image.asset(AppImages.splashMosque)

            /*Center(
              child: SvgPicture.asset(AppVectors.appIcon,
                  theme: const SvgTheme(
                    currentColor: AppColors.primary,
                  ),
                  semanticsLabel: 'App icon')),*/
          ],
        ),
      ),
    );
  }
}
