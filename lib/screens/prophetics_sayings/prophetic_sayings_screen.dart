import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sahabul_azkar/screens/prophetics_sayings/widgets/prophetic_sayings_card.dart';
import 'package:sahabul_azkar/utils/app_colors.dart';
import 'package:sahabul_azkar/utils/app_vectors.dart';
import 'package:sahabul_azkar/utils/util.dart';

class PropheticSayingsScreen extends StatefulWidget {
  const PropheticSayingsScreen({Key? key}) : super(key: key);

  @override
  State<PropheticSayingsScreen> createState() => _PropheticSayingsScreenState();
}

class _PropheticSayingsScreenState extends State<PropheticSayingsScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Prophetic Sayings',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Manrope',
                color: AppColors.textColorDarkBlue,
                fontWeight: FontWeight.w600)),
        backgroundColor: AppColors.backgroundWhite,
        elevation: 0,
        actions: [
          IconButton(
            icon: SvgPicture.asset(AppVectors.bookmarkDirIcon,
                theme: const SvgTheme(
                  currentColor: AppColors.textColorDarkBlue,
                ),
                semanticsLabel: 'Bookmarks'),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        width: size.width,
        color: AppColors.backgroundWhite,
        child: ListView(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            children: List.generate(
              8,
              (index) => PropheticSayingsCard(
                color: Colorizer().getSpecialFiledColor(AppColors.fillColors),
                //color: _colors[index],
                title:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
              ),
            )),
      ),
    );
  }
}
