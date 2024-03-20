import 'package:get/get.dart';
import 'package:shop_kart/data/repositories/categories/category_repository.dart';
import 'package:shop_kart/features/shop/models/category_model.dart';
import 'package:shop_kart/utils/popups/loaders.dart';


class CategoriesController extends GetxController {
  static CategoriesController get instance => Get.find();

  final isLoading = false.obs;
  final _categoryRepository = Get.put(CategoryRepository());
  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  Future<void> fetchCategories() async {
    try {
      isLoading.value = true;

      final categories = await _categoryRepository.getAllCategories();

      allCategories.assignAll(categories);

      featuredCategories.assignAll(
          allCategories.where((categories) => categories.isFeatured &&
              categories.parentId.isEmpty).take(8).toList());
    } catch (e) {
      SkLoader.errorSnackBar(title: 'oh snap', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}