import 'package:rohit_s_application12/presentation/camera_screen/controller/camera_screen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LSScreen.
///
/// This class ensures that the LSController is created when the
/// LSScreen is first loaded.
class home_ScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => camera_screenController());
  }
}
