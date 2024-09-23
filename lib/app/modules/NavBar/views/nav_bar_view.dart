// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/theme_Colors.dart';
import '../controllers/nav_bar_controller.dart';

class NavBarView extends GetView<NavBarController> {
  const NavBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height / 100;
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var navBarHeight = screenHeight * 2.8;
    return Obx(
      () => Scaffold(
        extendBody: true,
        //
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          // margin: const EdgeInsets.only(top: 10),
          height: 64,
          width: 64,
          child: FloatingActionButton(
            backgroundColor: const Color(0xFF6C57EC),
            elevation: 0,
            onPressed: () => debugPrint("Add Button pressed"),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 3, color: Colors.white),
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        //

        bottomNavigationBar: Container(
          margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            // color: Colors.blue,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              // showUnselectedLabels: false,
              showSelectedLabels: true,
              selectedFontSize: 11,
              unselectedFontSize: 11,

              selectedItemColor: Colors.black,
              selectedLabelStyle: TextStyle(fontFamily: "Aleo"),
              unselectedLabelStyle: TextStyle(fontFamily: "Aleo"),
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 3),
                    child: Image.asset(
                      controller.currentindex.value == 0
                          ? "assets/icons/home.png"
                          : "assets/icons/home2.png",
                      height: navBarHeight,
                      // height: 27,
                      color: controller.currentindex.value == 0
                          ? Color(0xFF6C57EC)
                          : Colors.grey.shade500,
                    ),
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 3),
                    child: Image.asset(
                      controller.currentindex.value == 1
                          ? "assets/icons/love.png"
                          : "assets/icons/love2.png",
                      height: navBarHeight,

                      // height: 27,
                      color: controller.currentindex.value == 1
                          ? Color(0xFF6C57EC)
                          : Colors.grey.shade500,
                    ),
                  ),
                  label: 'Video',
                ),
                 BottomNavigationBarItem(icon:Icon(Icons.no_accounts),label: "" ),
                

                BottomNavigationBarItem(
                  icon: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 3),
                        child: Image.asset(
                          controller.currentindex.value == 2
                              ? "assets/icons/cart.png"
                              : "assets/icons/cart2.png",
                          height: navBarHeight,
                          // height: 27,
                          color: controller.currentindex.value == 2
                              ? Color(0xFF6C57EC)
                              : Colors.grey.shade500,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50)),
                              child: Center(child: Text("3",style: TextStyle(fontSize: 9),)),
                        ),
                      )
                    ],
                  ),
                  label: 'Inbox',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 3),
                    child: Image.asset(
                      controller.currentindex.value == 3
                          ? "assets/icons/user.png"
                          : "assets/icons/user2.png",
                      height: navBarHeight,
                      // height: 27,
                      color: controller.currentindex.value == 3
                          ? Color(0xFF6C57EC)
                          : Colors.grey.shade500,
                    ),
                  ),
                  label: 'Profile',
                ),
              ],
              onTap: (index) {
                controller.currentindex.value = index;
              },
              currentIndex: controller.currentindex.value,
            ),
          ),
        ),
        body: controller.pages[controller.currentindex.value],
      ),
    );
  }
}
