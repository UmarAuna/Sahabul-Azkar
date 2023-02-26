import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sahabul_azkar/utils/app_colors.dart';
import 'package:sahabul_azkar/utils/app_vectors.dart';
import 'package:sahabul_azkar/utils/util.dart';

class BookmarksDetailScreen extends StatefulWidget {
  final Color? color;
  const BookmarksDetailScreen({Key? key, this.color}) : super(key: key);

  @override
  State<BookmarksDetailScreen> createState() => _BookmarksDetailScreenState();
}

class _BookmarksDetailScreenState extends State<BookmarksDetailScreen> {
  bool isBookmarked = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: AppColors.textColorDarkBlue,
        ),
        centerTitle: true,
        title: const Text('Bookmark',
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Row(
                children: [
                  SvgPicture.asset(AppVectors.quotes),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 13),
              child: Container(
                width: size.width,
                padding: const EdgeInsets.only(
                    left: 24, right: 24, top: 57, bottom: 64),
                decoration: BoxDecoration(
                    color: widget.color,
                    borderRadius: const BorderRadius.all(Radius.circular(18))),
                child: Column(
                  children: const [
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Manrope',
                          color: AppColors.textColorDarkBlue,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    SizedBox(
                      width: 230,
                      child: Divider(
                        color: AppColors.dividerColor,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '( Lorem ipsum )',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Manrope',
                          color: AppColors.textColorDarkBlue,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    showToast('Let\'s  do this');
                  },
                  icon: const Icon(
                    Icons.share_sharp,
                    color: AppColors.textColorDarkBlue,
                    size: 31,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {
                      showToast('isBookmarked $isBookmarked');
                      setState(() {
                        isBookmarked = !isBookmarked;
                      });
                    },
                    icon: isBookmarked
                        ? const Icon(
                            Icons.bookmark_outline,
                            color: AppColors.textColorDarkBlue,
                            size: 31,
                          )
                        : const Icon(
                            Icons.bookmark,
                            color: AppColors.textColorDarkBlue,
                            size: 31,
                          ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
