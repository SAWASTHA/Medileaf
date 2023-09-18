import 'package:rohit_s_application12/core/app_export.dart';
import 'package:rohit_s_application12/presentation/login_screen/models/login_model.dart';

import 'package:rohit_s_application12/presentation/search_screen/models/search_screen.dart';

/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class search_screenController extends GetxController {


  Rx<search_screenModel> loginModelObj = search_screenModel().obs;
}
