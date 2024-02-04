import 'package:flutter/material.dart';
import 'package:shop_kart/utils/constants/colors.dart';

class SkShadowStyle{

  static final verticalProductShow = BoxShadow(
    color: SkColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
    color: SkColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );
}