import 'package:get/get.dart';

import '../modules/HomePage/bindings/HomePage_binding.dart';
import '../modules/HomePage/views/HomePage_view.dart';
import '../modules/NavBar/bindings/nav_bar_binding.dart';
import '../modules/NavBar/views/nav_bar_view.dart';
import '../modules/NotificationPage/bindings/notification_page_binding.dart';
import '../modules/NotificationPage/views/notification_page_view.dart';
import '../modules/ProfilePage/binding/profilePage_binding.dart';
import '../modules/ProfilePage/view/profilePage_view.dart';
import '../modules/splash_screen/binding/splash_binding.dart';
import '../modules/splash_screen/view/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static const initialPage = Routes.splashScreen;
  static final pages = [
    GetPage(
      name: _Path.splashScreen,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Path.profilePage,
      page: () => const ProfilePageView(),
      binding: ProfilePageBinding(),
    ),
    GetPage(
      name: Routes.homePage,
      page: () => const HomepageView(),
      binding: HomepageBinding(),
    ),
    GetPage(
      name: Routes.navBar,
      page: () => const NavBarView(),
      binding: NavBarBinding(),
    ),
    GetPage(
      name: Routes.NOTIFICATION_PAGE,
      page: () => const NotificationPageView(),
      binding: NotificationPageBinding(),
    ),
  ];
}
