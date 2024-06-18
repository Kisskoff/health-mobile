import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

import 'Health/MyComponents/lang/Hindex.dart';
import 'localization_service.dart';
import 'model/user.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => User()),
      ],
      child: MyApp(),
    ),

    //  const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: LocalizationService(),
      supportedLocales: [
        Locale('en', 'US'),
        // kisskoff getLangue 2
        //Locale('id', 'ID')
      ],
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      home: HLangue(operation: "ouvre",),
      //SplashScreen(),

      // kisskoff getLangue 1
      // localizationsDelegates: [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],

      /// end
    );
  }
}
