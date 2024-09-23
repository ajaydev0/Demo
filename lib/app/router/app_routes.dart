part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const splashScreen = _Path.splashScreen;
    static const homePage = _Path.homePage;
  static const profilePage = _Path.profilePage;
  static const navBar = _Path.navBar;

}

abstract class _Path {
  _Path._();
  static const splashScreen = "/";
  static const profilePage = "/profilePage";
  static const homePage = "/homePage";
  static const navBar = "/navBar";
}
