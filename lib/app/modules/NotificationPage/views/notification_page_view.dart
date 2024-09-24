import 'package:demo/app/widgets/KText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/theme_Colors.dart';
import '../../../widgets/ExitBox.dart';
import '../controllers/notification_page_controller.dart';
import '../list/list.dart';

class NotificationPageView extends GetView<NotificationPageController> {
  const NotificationPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          Exit_DialogBox(context);
          return Future.value(false);
        },
        child: Scaffold(
            appBar: AppBar(
              // title: Ktext(text: "Notification"),
              // centerTitle: true,
              backgroundColor: Colors.white,
              actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
            ),
            backgroundColor: Kcolor.white,
            body: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 15, bottom: 10),
                      child: Ktext(
                        text: "Notification",
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: notificationList.length,
                    itemBuilder: (context, index) {
                      var data = notificationList[index];
                      return Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10)),
                        margin: EdgeInsets.all(10),
                        child: Material(
                          elevation: 10,
                          borderRadius: BorderRadius.circular(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor: Kcolor.mainColor,
                                radius: 25,
                                child: CircleAvatar(
                                  radius: 24,
                                  backgroundImage: AssetImage(
                                    data.imageUrl!,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Ktext(
                                          text: data.name,
                                          color: Colors.grey[700],
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1),
                                      Ktext(
                                          text: "*${data.type}",
                                          color: Kcolor.mainColor,
                                          fontSize: 8),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Ktext(
                                      text: data.description,
                                      color: Colors.grey[700])
                                ],
                              ),
                              Ktext(text: data.time, color: Colors.grey)
                            ],
                          ),
                        ),
                      );

                      //  ListTile(
                      //   // horizontalTitleGap: 50.00,
                      //   subtitle: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Ktext(text: "Painter"),
                      //       Ktext(text: "5.2k Favorite")
                      //     ],
                      //   ),
                      //   subtitleTextStyle:
                      //       TextStyle(color: Colors.grey[700], fontSize: 8.5),
                      //   title: Ktext(text: data.name),
                      //   titleTextStyle: TextStyle(color: Colors.grey[700]),
                      //   leading: CircleAvatar(
                      //     backgroundColor: Kcolor.mainColor,
                      //     radius: 25,
                      //     child: CircleAvatar(
                      //       radius: 24,
                      //       backgroundImage: AssetImage(
                      //         data.imageUrl!,
                      //       ),
                      //     ),
                      //   ),
                      //   trailing: Ktext(
                      //       text: "1000\$",
                      //       color: Colors.grey.shade700,
                      //       fontSize: 13),
                      // );
                    },
                  ),
                ),
                const SizedBox(height: 20),
              ],
            )));
  }
}
