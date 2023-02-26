import 'package:flutter/material.dart';
import 'package:flutter_app/common/index.dart';
import 'package:flutter_app/common/routers/pages.dart';
import 'package:get/get.dart';

import 'global.dart';


Future<void> main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "flutter demo",
      debugShowCheckedModeBanner: false,
      // 样式
      theme: ConfigService.to.isDarkModel ? AppTheme.dark : AppTheme.light,
      // 路由
      initialRoute: RouteNames.stylesStylesIndex,
      getPages: RoutePages.list,
      navigatorObservers: [RoutePages.observer],
      // 多语言
      translations: Translation(), // 词典
      localizationsDelegates: Translation.localizationsDelegates, // 代理
      supportedLocales: Translation.supportedLocales, // 支持的语言种类
      locale: ConfigService.to.locale, // 当前语言种类
      fallbackLocale: Translation.fallbackLocale, // 默认语言种类
    );
  }

  
}