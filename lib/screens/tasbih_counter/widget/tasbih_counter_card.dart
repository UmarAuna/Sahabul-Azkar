import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sahabul_azkar/utils/app_colors.dart';
import 'package:sahabul_azkar/utils/app_vectors.dart';

class TasbihCounterCard extends StatelessWidget {
  final GestureTapCallback onTap;
  final String title;
  final String description;
  final Widget? trailingIcon;
  const TasbihCounterCard({
    Key? key,
    required this.onTap,
    required this.description,
    required this.title,
    this.trailingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
            color: AppColors.white,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
                horizontalTitleGap: 8,
                title: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Manrope',
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textColorDarkBlue),
                ),
                subtitle: Text(
                  description,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'Manrope',
                      color: AppColors.textColorDarkBlue),
                ),
                leading: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                      color: AppColors.primaryLight,
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  child: const Text(
                    '33',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        color: AppColors.primary,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                trailing: SvgPicture.asset(
                  AppVectors.tasbihSmallIcon,
                ),
                onTap: onTap)),
        const SizedBox(
          height: 8,
        )
      ],
    );
  }
}
