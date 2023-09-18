import 'package:rohit_s_application12/presentation/camera_screen/camera_screen.dart';
import 'package:rohit_s_application12/presentation/home_Screen/binding/home_Screen_binding.dart';
import 'package:rohit_s_application12/presentation/home_Screen/home_Screen.dart';
import 'package:rohit_s_application12/presentation/search_screen/binding/search_screen_binding.dart';
import 'package:rohit_s_application12/presentation/search_screen/searchscreen.dart';
import 'package:rohit_s_application12/presentation/startup_screen/startup_screen.dart';
import 'package:rohit_s_application12/presentation/startup_screen/binding/startup_binding.dart';
import 'package:rohit_s_application12/presentation/l_s_screen/l_s_screen.dart';
import 'package:rohit_s_application12/presentation/l_s_screen/binding/l_s_binding.dart';
import 'package:rohit_s_application12/presentation/login_screen/login_screen.dart';
import 'package:rohit_s_application12/presentation/login_screen/binding/login_binding.dart';
import 'package:rohit_s_application12/presentation/signup_screen/signup_screen.dart';
import 'package:rohit_s_application12/presentation/signup_screen/binding/signup_binding.dart';
import 'package:rohit_s_application12/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:rohit_s_application12/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String startupScreen = '/startup_screen';

  static const String lSScreen = '/l_s_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static const String homeScreen = '/home_Screen';

  static const String camerascreen = '/camera_screen';

  static const String searchscreen = '/searchscreen';

  static List<GetPage> pages = [
    GetPage(
      name: searchscreen,
      page: () => search_Screen(),
      bindings: [
        search_screenBinding(),
      ],
    ),
    GetPage(
      name: camerascreen,
      page: () => camera_screen(),
      bindings: [
        home_ScreenBinding(),
      ],
    ),
    GetPage(
      name: startupScreen,
      page: () => StartupScreen(),
      bindings: [
        StartupBinding(),
      ],
    ),
    GetPage(
      name: lSScreen,
      page: () => LSScreen(),
      bindings: [
        LSBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => home_Screen(),
      bindings: [
        home_ScreenBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => StartupScreen(),
      bindings: [
        StartupBinding(),
      ],
    )
  ];
}
