import 'package:demo/app/const/Image_Path/Assets_Image_Path.dart';
import 'package:demo/app/modules/NavBar/controllers/nav_bar_controller.dart';
import 'package:demo/app/modules/profilePage/list/list.dart';
import 'package:demo/app/router/app_pages.dart';
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
    var controller2 = Get.put(NavBarController());
    return Obx(
      () => Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            children: [
              SizedBox(
                height: AppHeight * 120,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 5),
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
                             Get.toNamed(Routes.NOTIFICATION_PAGE);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 28,
                                width: 28,
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          AssetsImagePath.notification),
                                      fit: BoxFit.cover,
                                    ),
                                    // color: Colors.grey,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: () {
                                controller2.globalKey.currentState
                                    ?.openDrawer();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(AssetsImagePath.menu),
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
                                color: Kcolor.mainColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      blurRadius: 20,
                                      offset: const Offset(0, 10))
                                ]),
                            child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage(AssetsImagePath.admin),
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
                              AssetsImagePath.instagram,
                            )),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //Story ListView
                      SizedBox(
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
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: const Center(
                                              child: Icon(Icons.add)),
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
                                  color: controller.currentState.value == 1
                                      ? Kcolor.mainColor
                                      : Colors.grey[400],
                                  ontap: () {
                                    controller.currentState.value = 1;
                                  }),
                              Button(
                                  icon: Icons.people_outline,
                                  color: controller.currentState.value == 2
                                      ? Kcolor.mainColor
                                      : Colors.grey[400],
                                  ontap: () {
                                    controller.currentState.value = 2;
                                  }),
                              Button(
                                  icon: Icons.favorite_outline,
                                  color: controller.currentState.value == 3
                                      ? Kcolor.mainColor
                                      : Colors.grey[400],
                                  ontap: () {
                                    controller.currentState.value = 3;
                                  }),
                              Button(
                                  icon: Icons.handshake_outlined,
                                  color: controller.currentState.value == 4
                                      ? Kcolor.mainColor
                                      : Colors.grey[400],
                                  ontap: () {
                                    controller.currentState.value = 4;
                                  })
                            ],
                          )),
                      const Divider(),
                      if (controller.currentState.value == 1)
                        state1()
                      else if (controller.currentState.value == 2)
                        state2()
                      else if (controller.currentState.value == 3)
                        state3()
                      else if (controller.currentState.value == 4)
                        state4()
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

  IconButton Button({icon, color, void Function()? ontap}) {
    return IconButton(
        onPressed: ontap, icon: Icon(icon, color: color, size: 25));
  }
}

//State 1
state1() {
  return Expanded(
    child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120,
          childAspectRatio: 2 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 20,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/poster/1.jpg",
                    )),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
          );
        }),
  );
}

// State 2
state2() {
  return Expanded(
      child: SizedBox(
    // color: Colors.amber,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                height: 38,
                minWidth: 150,
                onPressed: () {},
                color: Kcolor.mainColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Ktext(text: "Following 2k", color: Colors.white)),
            const SizedBox(width: 10),
            MaterialButton(
                height: 38,
                minWidth: 150,
                onPressed: () {},
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Ktext(text: "Followers 2.5k", color: Colors.grey[600])),
          ],
        ),
        const Divider(),
        Expanded(
          child: Container(
            color: Colors.white,
            child: ListView.builder(
              itemCount: followerList.length,
              itemBuilder: (context, index) {
                var data = followerList[index];
                return ListTile(
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Ktext(text: "Painter"),
                      Ktext(text: "5.2k Favorite")
                    ],
                  ),
                  subtitleTextStyle:
                      TextStyle(color: Colors.grey[700], fontSize: 8.5),
                  title: Ktext(text: data.name),
                  titleTextStyle: TextStyle(color: Colors.grey[700]),
                  leading: CircleAvatar(
                    backgroundColor: Kcolor.mainColor,
                    radius: 25,
                    child: CircleAvatar(
                      radius: 24,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          data.imageUrl!,
                        ),
                      ),
                    ),
                  ),
                  trailing: MaterialButton(
                      height: 30,
                      minWidth: 90,
                      onPressed: () {},
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Ktext(
                          text: "Following",
                          color: Colors.white,
                          fontSize: 10)),
                );
              },
            ),
          ),
        )
      ],
    ),
  ));
}

// State 3
state3() {
  return Expanded(
      child: Container(
    color: Colors.white,
    child: ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(AssetsImagePath.poster5),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Ktext(
                        text: "I will Singing all type of songs",
                        fontSize: 15,
                        color: Colors.grey.shade700,
                      ),
                      Ktext(
                          text: "\$100",
                          fontSize: 15,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.star, size: 15, color: Colors.yellow[700]),
                          const SizedBox(width: 1),
                          Ktext(
                            text: " 4.5 (120+ Ratings)",
                            fontSize: 11,
                            color: Colors.grey.shade600,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ),
  ));
}

// State 4
state4() {
  return Expanded(
    child: Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: followerList.length,
        itemBuilder: (context, index) {
          var data = followerList[index];
          return ListTile(
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Ktext(text: "Painter"), Ktext(text: "5.2k Favorite")],
            ),
            subtitleTextStyle:
                TextStyle(color: Colors.grey[700], fontSize: 8.5),
            title: Ktext(text: data.name),
            titleTextStyle: TextStyle(color: Colors.grey[700]),
            leading: CircleAvatar(
              backgroundColor: Kcolor.mainColor,
              radius: 25,
              child: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage(
                  data.imageUrl!,
                ),
              ),
            ),
            trailing: Ktext(
                text: "1000\$", color: Colors.grey.shade700, fontSize: 13),
          );
        },
      ),
    ),
  );
}
