import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sahabul_azkar/screens/home/model/home_card_item.dart';
import 'package:sahabul_azkar/utils/app_colors.dart';
import 'package:sahabul_azkar/utils/app_vectors.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 20.0, mainAxisSpacing: 20.0),
          itemCount: homeCardItems.length,
          itemBuilder: (context, int index) {
            final homeCardItem = homeCardItems[index];
            return InkWell(
              onTap: () {
                if (index == 0) {
                  print('Counter');
                } else if (index == 1) {
                  print('Saying');
                } else if (index == 2) {
                  print('Share');
                } else if (index == 3) {
                  print('About');
                }
              },
              child: Material(
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 15),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.textColorDarkBlue.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 12,
                          offset: const Offset(4, 4),
                        ),
                      ],
                      color: homeCardItem.cardColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30))),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              homeCardItem.icon,
                              fit: BoxFit.cover,
                              height: 52,
                              width: 52,
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            SvgPicture.asset(AppVectors.arrowRightIcon,
                                theme: const SvgTheme(
                                  currentColor: AppColors.textColorDarkBlue,
                                ),
                                semanticsLabel: 'arrow icon'),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(homeCardItem.title,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Manrope',
                                  color: AppColors.textColorDarkBlue,
                                  fontWeight: FontWeight.w800)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
