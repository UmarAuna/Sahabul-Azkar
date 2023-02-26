import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sahabul_azkar/screens/bookmarks/bookmarks_detail_screen.dart';
import 'package:sahabul_azkar/utils/app_colors.dart';
import 'package:sahabul_azkar/utils/app_vectors.dart';
import 'package:sahabul_azkar/utils/util.dart';

class BookmarksCard extends StatelessWidget {
  //final GestureTapCallback onTap;
  final String title;
  final Color? color;
  const BookmarksCard({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
            color: color,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
                horizontalTitleGap: 8,
                contentPadding: const EdgeInsets.only(
                    left: 7.0, right: 14.0, top: 14, bottom: 14),
                title: Text(
                  title,
                  maxLines: 2,
                  style: const TextStyle(
                      fontSize: 13,
                      fontFamily: 'Manrope',
                      //overflow: TextOverflow.clip,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textColorDarkBlue),
                ),
                leading: SvgPicture.asset(
                  AppVectors.propheticSayingsSmallIcon,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.textColorDarkBlue,
                  size: 20,
                ),
                onTap: () {
                  showToast('$title');
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BookmarksDetailScreen(color: color);
                  }));
                })),
        const SizedBox(
          height: 8,
        )
      ],
    );
  }
}
