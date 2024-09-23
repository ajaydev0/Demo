import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/KText.dart';
import '../controller/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());

    return Scaffold(
      backgroundColor: const Color(0xFF6C57EC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Ktext(
              text: "wolves.",
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.white,
            ),
            const SizedBox(height: 20),
            const SizedBox(
              height: 25,
              child: FittedBox(
                
                child: CupertinoActivityIndicator(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
