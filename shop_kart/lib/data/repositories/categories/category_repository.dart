import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shop_kart/data/services/firebase_storage_services.dart';
import 'package:shop_kart/features/shop/models/category_model.dart';

import '../../../utils/exceptions/firebase_exceptions.dart';
import '../../../utils/exceptions/platform_exceptions.dart';

class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  Future<List<CategoryModel>> getAllCategories() async{
    try{
      final snapshot = await _db.collection('Categories').get();
      final list = snapshot.docs.map((document) => CategoryModel.fromSnapshot(document)).toList();
      return list;
    } on FirebaseException catch (e) {
      throw SkFirebaseExceptions(e.code).message;
    } on PlatformException catch (e) {
      throw SkPlatformExceptions(e.code).message;
    } catch (e) {
      throw 'Something went wrong.';
    }
  }

  Future<void> uploadDummyData(List<CategoryModel> categories) async {
    try {
      final storage = Get.put(SkFirebaseStorageServices());

    for(var category in categories){
        final file = await storage.getImageDataFromAssets(category.image);

        final url = await storage.uploadImageData('categories',file,category.name);

        category.image = url;

        await _db.collection("Categories").doc(category.id).set(category.toJson());
      }
    }on FirebaseException catch (e) {
      throw SkFirebaseExceptions(e.code).message;
    } on PlatformException catch (e) {
      throw SkPlatformExceptions(e.code).message;
    } catch (e) {
      throw 'Something went wrong.';
    }
  }
}