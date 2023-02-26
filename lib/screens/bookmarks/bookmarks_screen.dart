import 'package:flutter/material.dart';
import 'package:sahabul_azkar/screens/bookmarks/widget/bookmarks_card.dart';
import 'package:sahabul_azkar/utils/app_colors.dart';
import 'package:sahabul_azkar/utils/util.dart';

class BookmarksScreen extends StatefulWidget {
  const BookmarksScreen({Key? key}) : super(key: key);

  @override
  State<BookmarksScreen> createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bookmarks',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Manrope',
                color: AppColors.textColorDarkBlue,
                fontWeight: FontWeight.w600)),
        backgroundColor: AppColors.backgroundWhite,
        elevation: 0,
      ),
      body: Container(
        width: size.width,
        color: AppColors.backgroundWhite,
        child: ListView(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            children: List.generate(
              8,
              (index) => BookmarksCard(
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
