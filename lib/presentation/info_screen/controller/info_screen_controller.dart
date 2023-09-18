import 'package:rohit_s_application12/core/app_export.dart';
import 'package:rohit_s_application12/presentation/info_screen/models/info_screen.dart';


/// A controller class for the LSScreen.
///
/// This class manages the state of the LSScreen, including the
/// current lSModelObj
class info_screenController extends GetxController {
  Rx<info_screenModel> lSModelObj = info_screenModel().obs;
}
