import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

import '../../common/widgets/loader/animation_loader.dart';

class SkFullScreenLoader  {
  static void openLoadingDialog(String text,String animation){
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
          canPop: false,
          child: Container(
            color: SKHelperFunction.isDarkMode(Get.context!) ? SkColors.dark : SkColors.white,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 250),
                SkAnimationLoaderWidget(text: text,animation: animation,)
              ],

            ),
          ),
        ),
    );
  }

  ///stop currently open loading dialog,

  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop(); //close the dialog box using the navigation
  }
}