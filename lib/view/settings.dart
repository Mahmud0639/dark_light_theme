import 'package:dark_light_theme/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Consumer<ProviderTry>(
        builder: (context,ProviderTry notifier,child){
          return Column(
            children: [
              ListTile(
                leading: notifier.isDark?Icon(Icons.dark_mode):Icon(Icons.light_mode),
                title: notifier.isDark==false?Text("Light mode"):Text("Dark mode"),
                trailing: Switch(
                  value:notifier.isDark,
                  onChanged: (value){
                    notifier.changeTheme();
                  },
                ),
              )
            ],
          );
        }

      ),
    );
  }
}
