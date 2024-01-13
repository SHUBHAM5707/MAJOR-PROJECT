import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class SkSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: SkSizes.appBarHeight,
    left: SkSizes.defaultSpace,
    bottom: SkSizes.defaultSpace,
    right: SkSizes.defaultSpace,
  );
}