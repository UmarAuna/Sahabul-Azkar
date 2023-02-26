import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sahabul_azkar/utils/app_colors.dart';
import 'package:sahabul_azkar/utils/responsive.dart';

extension CustomContext on BuildContext {
  double screenHeight([double percent = 1]) =>
      MediaQuery.of(this).size.height * percent;

  double screenWidth([double percent = 1]) =>
      MediaQuery.of(this).size.width * percent;
}

double? makeResponsive(double size, String type) {
  if (type == 'text') {
    return size * Responsive.textMultiplier;
  } else if (type == 'height') {
    return size * Responsive.heightMultiplier;
  } else if (type == 'width') {
    return size * Responsive.widthMultiplier;
  } else if (type == 'image') {
    return size * Responsive.imageSizeMultiplier;
  }

  return null;
}

showToast(
  String message, {
  ToastGravity gravity = ToastGravity.CENTER,
  Toast length = Toast.LENGTH_LONG,
}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: length,
    gravity: gravity,
    timeInSecForIosWeb: 1,
    backgroundColor: AppColors.primary,
    textColor: AppColors.backgroundWhite,
    fontSize: 16.0,
  );
}

class Colorizer {
  Color? getRandomColors() {
    List<Color>? randomColors = [
      Colors.purple,
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.amber,
      Colors.pink,
      Colors.brown,
      Colors.grey,
      Colors.lightBlue,
      Colors.indigo,
      Colors.yellow
    ];
    return randomColors[Random().nextInt(randomColors.length)];
  }

  Color? getSpecialFiledColor(List<Color?>? myList) {
    return myList![Random().nextInt(myList.length)];
  }

  getRandomElementFromList(List<dynamic?>? myList) {
    return myList![Random().nextInt(myList.length)];
  }

  int getRandomNumber(int range1, int range2) {
    List<num?>? numbersList = [];
    for (int i = range1; i <= range2; i++) {
      numbersList.add(i);
    }
    return numbersList[Random().nextInt(numbersList.length)] as int;
  }
}
