import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:get/get.dart';
import 'package:scanly/view/pages/Splash/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: const [
          Locale('en'),
          Locale('fr'),
          Locale('ar'),
        ],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        startLocale: Get.locale,
        child: Phoenix(child: const MyApp())),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      theme: ThemeData(fontFamily: "Poppins"),
      home: const SplashPage(),
    );
  }
}
