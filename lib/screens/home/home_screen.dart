import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sahabul_azkar/screens/home/widgets/dua_card.dart';
import 'package:sahabul_azkar/screens/home/widgets/home_card.dart';
import 'package:sahabul_azkar/utils/app_colors.dart';
import 'package:sahabul_azkar/utils/app_vectors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundWhite,
        elevation: 0,
        actions: [
          IconButton(
            icon: SvgPicture.asset(AppVectors.logOutIcon,
                theme: const SvgTheme(
                  currentColor: AppColors.textColorDarkBlue,
                ),
                semanticsLabel: 'Logout icon'),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        width: size.width,
        color: AppColors.backgroundWhite,
        child: Column(
          children: [
            const SizedBox(
              height: 33,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Assalamu alaykum,',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Manrope',
                            color: AppColors.textColorDarkBlue,
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Good Morning, Umar Saidu.',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Manrope',
                            color: AppColors.textColorDarkBlue,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  SvgPicture.asset(AppVectors.greetingsIcon,
                      theme: const SvgTheme(
                        currentColor: AppColors.textColorDarkBlue,
                      ),
                      semanticsLabel: 'Greetings icon'),
                ],
              ),
            ),
            const SizedBox(
              height: 27,
            ),
            const DuaCard(),
            const SizedBox(
              height: 35,
            ),
            const HomeCard()
          ],
        ),
      )),
    );
  }
}
