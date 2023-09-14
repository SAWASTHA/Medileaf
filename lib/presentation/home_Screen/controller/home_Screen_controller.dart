import 'package:rohit_s_application12/core/app_export.dart';
import 'package:rohit_s_application12/presentation/home_Screen/models/home_Screen.dart';


/// A controller class for the LSScreen.
///
/// This class manages the state of the LSScreen, including the
/// current lSModelObj
class home_ScreenController extends GetxController {
  Rx<home_ScreenModel> lSModelObj = home_ScreenModel().obs;
}
