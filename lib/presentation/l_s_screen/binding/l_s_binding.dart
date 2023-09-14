import '../controller/l_s_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LSScreen.
///
/// This class ensures that the LSController is created when the
/// LSScreen is first loaded.
class LSBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LSController());
  }
}
