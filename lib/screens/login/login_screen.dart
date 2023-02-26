import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sahabul_azkar/utils/app_colors.dart';
import 'package:sahabul_azkar/utils/app_images.dart';
import 'package:sahabul_azkar/utils/app_vectors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.backgroundWhite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Row(
                children: [
                  Image.asset(
                    AppImages.appIcon,
                    height: 57,
                    width: 57,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Sahabul Azkar',
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Manrope',
                        color: AppColors.textColorDarkBlue,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 190,
            ),
            Center(
              child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset(AppVectors.googleIcon,
                      theme: const SvgTheme(
                        currentColor: AppColors.primary,
                      ),
                      semanticsLabel: 'login icon'),
                  label: const Text(
                    '\t\t\tContinue with Google',
                    style: TextStyle(
                      color: AppColors.textColorDarkBlue,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: AppColors.textColorDarkBlue,
                      backgroundColor: AppColors.white,
                      padding: const EdgeInsets.all(20.0),
                      fixedSize: const Size(360, 65),
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Manrope',
                          color: AppColors.textColorDarkBlue,
                          fontWeight: FontWeight.w700),
                      elevation: 1,
                      shadowColor: AppColors.textColorDarkBlue,
                      //side: BorderSide(color: Colors.black87, width: 2),
                      // alignment: Alignment.topLeft
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))))),
            ),
            const Spacer(),
            Image.asset(AppImages.splashMosque)
          ],
        ),
      ),
    );
  }
}
