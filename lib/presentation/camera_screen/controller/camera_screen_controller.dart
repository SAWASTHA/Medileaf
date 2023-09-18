import 'package:rohit_s_application12/core/app_export.dart';
import 'package:rohit_s_application12/presentation/camera_screen/models/camera_screen.dart';

/// A controller class for the LSScreen.
///
/// This class manages the state of the LSScreen, including the
/// current lSModelObj
class camera_screenController extends GetxController {
  Rx<camera_screenModel> lSModelObj = camera_screenModel().obs;
}
