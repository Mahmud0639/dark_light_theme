import 'package:shared_preferences/shared_preferences.dart';

class Common{
  late SharedPreferences preferences;
 static final Common _instance = Common._();

  factory Common(){
    return _instance;
  }
 Common._(){


 }

Future init()async{
    preferences = await SharedPreferences.getInstance();
    return this;
}

Future<bool> setBool(String key,bool value)async{
   return await preferences.setBool(key, value);

}

bool getBool(String key){
    return  preferences.getBool(key)??false;
}


}