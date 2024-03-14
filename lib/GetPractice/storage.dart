import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService extends GetxService{
  static StorageService get to => Get.find();
  late final SharedPreferences _preferences;

  Future<StorageService> init()async{
    _preferences = await SharedPreferences.getInstance();
    return this;
  }
}