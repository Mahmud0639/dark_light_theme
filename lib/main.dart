import 'package:dark_light_theme/AppTheme.dart';
import 'package:dark_light_theme/GetPractice/global.dart';
import 'package:dark_light_theme/provider/provider.dart';
import 'package:dark_light_theme/view/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (BuildContext context)=>ProviderTry()..init(),
      child: Consumer<ProviderTry>(
        builder: (context,ProviderTry notifier,child){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            //it is our default phone theme
            themeMode: notifier.isDark?ThemeMode.dark:ThemeMode.light,
            darkTheme: notifier.isDark?notifier.darkTheme:notifier.lightTheme,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const Settings(),
          );
        }

      ),
    );
  }
}
