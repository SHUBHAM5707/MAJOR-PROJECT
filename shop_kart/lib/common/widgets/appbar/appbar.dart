import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/devices/device_utility.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

import '../../../utils/constants/sizes.dart';

class SkAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SkAppBar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    this.showBackArrow = false,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SkSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left,color: dark ? SkColors.white : SkColors.black,))
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed, icon: Icon(leadingIcon))
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  ///implement preferredSize
  Size get preferredSize => Size.fromHeight(SkDeviceUtils.getAppBarHeight());
}
