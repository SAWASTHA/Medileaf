import '../controller/startup_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StartupScreen.
///
/// This class ensures that the StartupController is created when the
/// StartupScreen is first loaded.
class StartupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StartupController());
  }
}
