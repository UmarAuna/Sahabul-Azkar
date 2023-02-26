import 'package:flutter/material.dart';
import 'package:sahabul_azkar/utils/app_colors.dart';
import 'package:sahabul_azkar/utils/app_vectors.dart';

class HomeCardItem {
  final String title;
  final String icon;
  final Color cardColor;
  const HomeCardItem(
      {required this.title, required this.icon, required this.cardColor});
}

const List<HomeCardItem> homeCardItems = <HomeCardItem>[
  HomeCardItem(
      title: 'Tasbih\nCounter',
      icon: AppVectors.tasbihCounterIcon,
      cardColor: AppColors.tasbihCounterColor),
  HomeCardItem(
      title: 'Prophetic\nSayings',
      icon: AppVectors.propheticSayingIcon,
      cardColor: AppColors.propheticSayingsColor),
  HomeCardItem(
      title: 'Share\nApp',
      icon: AppVectors.shareBgIcons,
      cardColor: AppColors.shareAppColor),
  HomeCardItem(
      title: 'About\nApp',
      icon: AppVectors.aboutIcons,
      cardColor: AppColors.aboutAppColor)
];
