import 'package:flutter/material.dart';
import 'package:shop_kart/common/style/spacing_style.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_string.dart';
import '../../../utils/helpers/helper_function.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SkSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              ///images
              Image(
                image: AssetImage(image),
                width: SKHelperFunction.screenWidth() * 0.6,
              ),
              const SizedBox(height: SkSizes.spaceBtwSections),

              ///Title & Subtitle
              Text(title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: SkSizes.spaceBtwIteam),

              Text(subTitle,
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center),
              const SizedBox(height: SkSizes.spaceBtwSections),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: onPressed,
                    child: const Text(SkTexts.skContinue)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
