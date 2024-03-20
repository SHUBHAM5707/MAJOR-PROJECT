import 'package:get/get.dart';
import 'package:shop_kart/data/repositories/banner/banner_repository.dart';

import '../../../utils/popups/loaders.dart';
import '../models/banner_model.dart';

class BannerController extends GetxController {

  final isLoading = false.obs;
  final carousalCurrentIndex = 0.obs;
  final RxList<BannerModel> banners = <BannerModel>[].obs;


  @override
  void onInit() {
    fetchBanner();
    super.onInit();
  }

  void updatePageIndicator(index){
    carousalCurrentIndex.value = index;
  }

  Future<void> fetchBanner() async {
    try {
      isLoading.value = true;

      final bannerRepo = Get.put(BannerRepository());
      final banners = await bannerRepo.fetchBanner();

      this.banners.assignAll(banners);

    } catch (e) {
      SkLoader.errorSnackBar(title: 'oh snap', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }


}