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
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      initialRoute: RouteNames.systemSplash,
      getPages: RoutePages.list,
      navigatorObservers: [RoutePages.observer],
    );
  }

  
}