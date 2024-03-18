import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_kart/common/style/shimmer.dart';
import 'package:shop_kart/features/persionalization/controlles/user_controller.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/product/cart/cart_menu_icart.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_string.dart';

class SkHomeAppBar extends StatelessWidget {
  const SkHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return SkAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(SkTexts.homeAppbarTitle, style: Theme
              .of(context)
              .textTheme
              .labelMedium!
              .apply(color: SkColors.grey)),
          Obx(() {
            if (controller.profileLoading.value) {
              return const SkShimmerEffect(width: 80, height: 15);
            } else {
              return
                Text(controller.user.value.fullName, style: Theme
                  .of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: SkColors.white));
            }
          }),
        ],
      ),
      actions: [
        SkCartCounterIcon(
            onPressed: () {}, iconColor: SkColors.white)
      ],
    );
  }
}
