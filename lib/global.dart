import 'package:flutter/material.dart';
import 'package:flutter_app/common/services/wp_http.dart';
import 'package:get/get.dart';
import 'common/index.dart';

class Global {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    // 工具类
    await Storage().init();
    await Future.wait([
      Get.putAsync<ConfigService>(() async => await ConfigService()),
      Get.putAsync<WPHttpService>(() async => await WPHttpService()),
    ]).whenComplete(() {
    });
  }
}