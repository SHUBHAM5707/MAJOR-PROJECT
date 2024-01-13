import 'package:flutter/material.dart';
import 'package:shop_kart/features/authentication/controlles.onboarding/onboarding_controller.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/devices/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: SkDeviceUtils.getAppBarHeight(),
        right: SkSizes.defaultSpace,
        child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(), child: const Text('Skip'),
        )
    );
  }
}
