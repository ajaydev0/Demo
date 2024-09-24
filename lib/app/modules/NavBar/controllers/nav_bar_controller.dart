import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ProfilePage/view/profilePage_view.dart';

class NavBarController extends GetxController {
   final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  RxInt currentIndex = 3.obs;

  List pages = [
    Container(color: Colors.green),
    Container(color: Colors.yellow),
    Container(color: Colors.amber),
    const ProfilePageView()
  ];
}
