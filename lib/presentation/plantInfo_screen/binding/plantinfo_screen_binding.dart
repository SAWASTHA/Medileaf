import 'package:get/get.dart';
import 'package:rohit_s_application12/presentation/plantInfo_screen/controller/home_Screen_controller.dart';

/// A binding class for the LSScreen.
///
/// This class ensures that the LSController is created when the
/// LSScreen is first loaded.
class plantinfo_screenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => plantinfo_screenController());
  }
}
