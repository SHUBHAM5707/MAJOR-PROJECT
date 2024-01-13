import 'package:get_storage/get_storage.dart';

class SkLocalStorage{
  static final SkLocalStorage _instance = SkLocalStorage._internal();

  factory SkLocalStorage(){
    return _instance;
  }

  SkLocalStorage._internal();

  final _storage = GetStorage();
  //method to save data
  Future<void> saveData<T>(String key, T value) async{
    await _storage.write(key, value);
  }
  //method to read data
  T? readData<T>(String key){
    return _storage.read<T>(key);
  }
  //generic method to remove data
  Future<void> removeData(String key) async{
    await _storage.remove(key);
  }
  //clear all data
  Future<void> clearAll() async{
    await _storage.erase();
  }
}