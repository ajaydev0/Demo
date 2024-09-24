import 'package:demo/app/widgets/KText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/Image_Path/Assets_Image_Path.dart';
import '../../../const/theme_Colors.dart';
import '../controllers/nav_bar_controller.dart';

class NavBarView extends GetView<NavBarController> {
  const NavBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var AppHeight = (MediaQuery.of(context).size.height) / 100;
    var AppWidth = (MediaQuery.of(context).size.width) / 100;
    var navBarHeight = AppHeight * 2.5;
    var controller = Get.put(NavBarController());
    return Obx(
      () => Scaffold(
        drawer: const Drawer(),
        key: controller.globalKey,
        body: controller.pages[controller.currentIndex.value],
        extendBody: true,
        //
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          // margin: const EdgeInsets.only(top: 10),
          height: 64,
          width: 64,
          child: FloatingActionButton(
            backgroundColor: Kcolor.mainColor,
            elevation: 0,
            onPressed: () => print("Button pressed"),
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

        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Container(
            height: 67,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              // gradient: LinearGradient(
              //   colors: [
              //     // Color(0xFF9C8EEF),
              //     // Color(0xFF6C57EC),
              //     // Colors.white

              //     // Color(0xFF5443BB),

              //     // Color.fromRGBO(156,142,239, 100),
              //     // Color.fromRGBO(108, 87, 236, 100),
              //     // Color.fromRGBO(84, 67, 187, 100),
              //   ],
              //   begin: Alignment.bottomCenter,
              //   end: Alignment.topCenter,

              //   // stops: [
              //   //   0.01,
              //   //   0.05,
              //   //   0.01,
              //   // ],
              //   // tileMode: TileMode.clamp,
              // ),
            ),
            // color: Colors.amber,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              child: BottomAppBar(
                // color: Color(0xFF6C57EC),

                // color: Colors.red,
                color: Colors.transparent,
                // shape: CircularNotchedRectangle(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.currentIndex.value = 0;
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            controller.currentIndex.value == 0
                                ? AssetsImagePath.home1
                                : AssetsImagePath.home2,
                            height: navBarHeight,
                            // height: 27,
                            color: controller.currentIndex.value == 0
                                ? Kcolor.mainColor
                                : Colors.grey.shade500,
                          ),
                          const SizedBox(height: 5),
                          Ktext(
                            text: "Home",
                            fontSize: 12,
                            color: controller.currentIndex.value == 0
                                ? Kcolor.mainColor
                                : Colors.grey.shade500,
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.currentIndex.value = 1;
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            controller.currentIndex.value == 1
                                ? AssetsImagePath.video1
                                : AssetsImagePath.video2,
                            height: navBarHeight,
                            // height: 27,
                            color: controller.currentIndex.value == 1
                                ? Kcolor.mainColor
                                : Colors.grey.shade500,
                          ),
                          const SizedBox(height: 5),
                          Ktext(
                            text: "Video",
                            fontSize: 12,
                            color: controller.currentIndex.value == 1
                                ? Kcolor.mainColor
                                : Colors.grey.shade500,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        controller.currentIndex.value = 2;
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            controller.currentIndex.value == 2
                                ? AssetsImagePath.message1
                                : AssetsImagePath.message2,
                            height: navBarHeight,
                            // height: 27,
                            color: controller.currentIndex.value == 2
                                ? Kcolor.mainColor
                                : Colors.grey.shade500,
                          ),
                          const SizedBox(height: 5),
                          Ktext(
                            text: "Inbox",
                            fontSize: 12,
                            color: controller.currentIndex.value == 2
                                ? Kcolor.mainColor
                                : Colors.grey.shade500,
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.currentIndex.value = 3;
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            controller.currentIndex.value == 3
                                ? AssetsImagePath.person1
                                : AssetsImagePath.person2,
                            height: navBarHeight,
                            // height: 27,
                            color: controller.currentIndex.value == 3
                                ? Kcolor.mainColor
                                : Colors.grey.shade500,
                          ),
                          const SizedBox(height: 5),
                          Ktext(
                            text: "Profile",
                            fontSize: 12,
                            color: controller.currentIndex.value == 3
                                ? Kcolor.mainColor
                                : Colors.grey.shade500,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        // bottomNavigationBar: Container(
        //   margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(15),
        //     // color: Colors.blue,
        //   ),
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.all(Radius.circular(30)),
        //     child: BottomNavigationBar(
        //       backgroundColor: Colors.white,
        //       // showUnselectedLabels: false,
        //       showSelectedLabels: true,
        //       selectedFontSize: 11,
        //       unselectedFontSize: 11,

        //       selectedItemColor: Colors.black,
        //       selectedLabelStyle: TextStyle(fontFamily: "Aleo"),
        //       unselectedLabelStyle: TextStyle(fontFamily: "Aleo"),
        //       type: BottomNavigationBarType.fixed,
        //       items: <BottomNavigationBarItem>[
        //         BottomNavigationBarItem(
        //           icon: Padding(
        //             padding: const EdgeInsets.only(top: 5, bottom: 3),
        //             child: Image.asset(
        //               controller.currentIndex.value == 0
        //                   ? AssetsImagePath.home1
        //                   : AssetsImagePath.home2,
        //               height: navBarHeight,
        //               // height: 27,
        //               color: controller.currentIndex.value == 0
        //                   ? Kcolor.mainColor
        //                   : Colors.grey.shade500,
        //             ),
        //           ),
        //           label: "Home",
        //         ),
        //         BottomNavigationBarItem(
        //           icon: Padding(
        //             padding: const EdgeInsets.only(top: 5, bottom: 3),
        //             child: Image.asset(
        //               controller.currentIndex.value == 1
        //                   ? "assets/icons/love.png"
        //                   : "assets/icons/love2.png",
        //               height: navBarHeight,

        //               // height: 27,
        //               color: controller.currentindex.value == 1
        //                   ? Color(0xFF6C57EC)
        //                   : Colors.grey.shade500,
        //             ),
        //           ),
        //           label: 'Video',
        //         ),
        //          BottomNavigationBarItem(icon:Icon(Icons.no_accounts),label: "" ),

        //         BottomNavigationBarItem(
        //           icon: Stack(
        //             children: [
        //               Padding(
        //                 padding: const EdgeInsets.only(top: 5, bottom: 3),
        //                 child: Image.asset(
        //                   controller.currentindex.value == 2
        //                       ? "assets/icons/cart.png"
        //                       : "assets/icons/cart2.png",
        //                   height: navBarHeight,
        //                   // height: 27,
        //                   color: controller.currentindex.value == 2
        //                       ? Color(0xFF6C57EC)
        //                       : Colors.grey.shade500,
        //                 ),
        //               ),
        //               Positioned(
        //                 top: 0,
        //                 right: 0,
        //                 child: Container(
        //                   height: 12,
        //                   width: 12,
        //                   decoration: BoxDecoration(
        //                       color: Colors.red,
        //                       borderRadius: BorderRadius.circular(50)),
        //                       child: Center(child: Text("3",style: TextStyle(fontSize: 9),)),
        //                 ),
        //               )
        //             ],
        //           ),
        //           label: 'Inbox',
        //         ),
        //         BottomNavigationBarItem(
        //           icon: Padding(
        //             padding: const EdgeInsets.only(top: 5, bottom: 3),
        //             child: Image.asset(
        //               controller.currentindex.value == 3
        //                   ? AssetsImagePath.person1
        //                   : AssetsImagePath.person2,
        //               height: navBarHeight,
        //               // height: 27,
        //               color: controller.currentindex.value == 3
        //                   ? Kcolor.mainColor
        //                   : Colors.grey.shade500,
        //             ),
        //           ),
        //           label: 'Profile',
        //         ),
        //       ],
        //       onTap: (index) {
        //         controller.currentindex.value = index;
        //       },
        //       currentIndex: controller.currentindex.value,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
