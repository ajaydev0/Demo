
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ProfilePage/view/profilePage_view.dart';



class NavBarController extends GetxController {
  RxInt currentindex = 0.obs;

  List pages = [
    // const HomePageView(),
    Container(color: Colors.grey),
    Container(color: Colors.grey),
    Container(color: Colors.grey),
    Container(color: Colors.grey),
    // const CartPageView(),
    const ProfilePageView()
  ];
}
