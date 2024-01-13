import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/login/login.dart';



class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  ///variable
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;


  //update current index when page Scroll
  void updatePageIndicator(index) => currentPageIndex = index;

  //jump to the specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }


  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.offAll(const LoginScreen());
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }


  //update current index & jump to next page
  void skipPage(){
    currentPageIndex.value = 2  ;
    pageController.jumpTo(3);
  }
}

