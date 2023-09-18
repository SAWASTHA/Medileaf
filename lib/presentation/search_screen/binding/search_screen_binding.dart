import 'package:rohit_s_application12/presentation/search_screen/controller/search_screen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginScreen.
///
/// This class ensures that the LoginController is created when the
/// LoginScreen is first loaded.
class search_screenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => search_screenController());
  }
}
