import 'package:rohit_s_application12/core/app_export.dart';
import 'package:rohit_s_application12/presentation/l_s_screen/models/l_s_model.dart';

/// A controller class for the LSScreen.
///
/// This class manages the state of the LSScreen, including the
/// current lSModelObj
class LSController extends GetxController {
  Rx<LSModel> lSModelObj = LSModel().obs;
}
