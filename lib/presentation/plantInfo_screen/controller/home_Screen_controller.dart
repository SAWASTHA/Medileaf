import 'package:rohit_s_application12/core/app_export.dart';
import 'package:rohit_s_application12/presentation/plantInfo_screen/models/plantinfo_screen.dart';

/// A controller class for the LSScreen.
///
/// This class manages the state of the LSScreen, including the
/// current lSModelObj
class plantinfo_screenController extends GetxController {
  Rx<plantinfo_screenModel> lSModelObj = plantinfo_screenModel().obs;
}
