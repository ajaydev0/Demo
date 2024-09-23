import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/router/app_pages.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    builder: (_) => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initialPage,
      getPages: AppPages.pages,
    ),
  ));
}
