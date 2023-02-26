import 'package:flutter/material.dart';
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
