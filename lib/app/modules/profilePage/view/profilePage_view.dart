import 'package:demo/app/const/Image_Path/Assets_Image_Path.dart';
import 'package:demo/app/modules/profilePage/list/list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/theme_Colors.dart';
import '../../../widgets/KText.dart';
import '../controller/profilePage_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  const ProfilePageView({super.key});
  @override
  Widget build(BuildContext context) {
    var user = "Ajay Kumar Nath";
    var AppHeight = (MediaQuery.of(context).size.height) / 100;
    var AppWidth = (MediaQuery.of(context).size.width) / 100;
    var controller = Get.put(ProfilePageController());
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        // key: controller.globalKey,
        // drawer: SafeArea(child: KDrawer(controller, context)),
        // backgroundColor: Color.fromARGB(255, 172, 171, 171),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 5, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        // controller.globalKey.currentState?.openDrawer();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 28,
                        width: 28,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                              image:
                                  AssetImage("assets/icons/notification.png"),
                              fit: BoxFit.cover,
                            ),
                            // color: Colors.grey,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        // controller.globalKey.currentState?.openDrawer();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 30,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/icons/menu.png"),
                              fit: BoxFit.cover,
                            ),
                            // color: Colors.grey,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                  ],
                ),
              ),

              //

              Hero(
                transitionOnUserGestures: true,
                tag: "ajay",
                child: Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Kcolor.black,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 20,
                              offset: const Offset(0, 10))
                        ]),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/admin.jpg"),
                      maxRadius: 45,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Ktext(
                text: "Ajay Dev",
                fontSize: 22,
                color: Kcolor.black,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 5,
              ),
              Ktext(
                text: "Fashion Design",
                fontSize: 14,
                color: Colors.grey.shade500,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_outlined,
                      size: 17, color: Colors.grey.shade600),
                  const SizedBox(width: 1),
                  Ktext(
                    text: "Stockton, New Hampshire",
                    fontSize: 15,
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.star, size: 15, color: Colors.yellow[700]),
                  const SizedBox(width: 1),
                  Ktext(
                    text: " 4.5 (500+ Ratings)",
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(child: Ktext(text: "About")),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                        child: Image.asset(
                      height: 20,
                      "assets/icons/instagram.png",
                    )),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //Story ListView
              Container(
                height: 80,
                // color: Colors.amber,
                child: ListView.builder(
                  itemCount: storyList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var data = storyList[index];
                    return data.text == ""
                        ? Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(100)),
                                  child: const Center(child: Icon(Icons.add)),
                                ),
                                Ktext(text: "")
                              ],
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                      data.imageUrl!,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Ktext(text: data.text, fontSize: 12)
                              ],
                            ),
                          );
                  },
                ),
              ),
              SizedBox(
                  height: 50,
                  // color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(
                          icon: Icons.category_outlined,
                          color: Kcolor.mainColor),
                      Button(icon: Icons.people_outline, color: Colors.grey),
                      Button(icon: Icons.favorite_outline, color: Colors.grey),
                      Button(icon: Icons.handshake_outlined, color: Colors.grey)
                    ],
                  )),
              const Divider(),
              SizedBox(
                height: 300,
                  child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent (
              maxCrossAxisExtent: 150,
              childAspectRatio: 2 / 2,
              // crossAxisSpacing: 20,
              // mainAxisSpacing: 20,
            ),
            itemCount: 20,
            itemBuilder: (BuildContext ctx, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(AssetsImagePath.people1,fit: BoxFit.cover,)
                ),
              );
            }
            ),)
            ],
          ),
        ));
  }

  IconButton Button({icon, color}) {
    return IconButton(
        onPressed: () {}, icon: Icon(icon, color: color, size: 25));
  }
}
