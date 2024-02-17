
import 'package:flutter/material.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/devices/device_utility.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';


class SkTabBar extends StatelessWidget implements PreferredSizeWidget{

  const SkTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);
    return Material(
      color: dark ? SkColors.black : SkColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: SkColors.primary,
        labelColor: dark ? SkColors.white : SkColors.primary,
        unselectedLabelColor: SkColors.darkGrey,
      ),
    );
  }

  @override
  ///implement preferredSize
  Size get preferredSize => Size.fromHeight(SkDeviceUtils.getAppBarHeight());
}
