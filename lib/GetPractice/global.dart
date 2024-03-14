import 'package:dark_light_theme/GetPractice/storage.dart';
import 'package:dark_light_theme/GetPractice/user_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Global{
  static Future init()async{
    WidgetsFlutterBinding.ensureInitialized();
    await Get.putAsync<StorageService>(() => StorageService().init());
    Get.put<UserStore>(UserStore());
  }
}