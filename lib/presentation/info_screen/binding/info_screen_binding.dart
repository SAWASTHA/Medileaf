import 'package:get/get.dart';
import 'package:rohit_s_application12/presentation/info_screen/controller/info_screen_controller.dart';

/// A binding class for the LSScreen.
///
/// This class ensures that the LSController is created when the
/// LSScreen is first loaded.
class info_screenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => info_screenController());
  }
}
