import 'package:flutter/material.dart';
import 'package:sahabul_azkar/utils/app_colors.dart';
import 'package:sahabul_azkar/utils/app_images.dart';

class DuaCard extends StatelessWidget {
  const DuaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: size.width,
        height: size.height,
        constraints: BoxConstraints.expand(height: size.height / 6),
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.textColorDarkBlue,
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(0.0, 0.0), // shadow direction: bottom right
              )
            ],
            color: AppColors.primary,
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Dua of the day.',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Manrope',
                    color: AppColors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Positioned(
              top: 30.0,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 30, top: 20),
                width: 370,
                child: const Text(
                  'Allaahumma \'innee \'as\'aluka \'ilman naafi\'an, wa rizqan tayyiban, wa \'amalan mutaqabbalan',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Manrope',
                      color: AppColors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                right: 10,
                child: Image.asset(
                  AppImages.mosqueSmallNew,
                  height: 92,
                  width: 92,
                )),
          ],
        ),
      ),
    );
  }
}
