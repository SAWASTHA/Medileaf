import 'package:rohit_s_application12/core/app_export.dart';
import 'package:rohit_s_application12/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupScreen.
///
/// This class manages the state of the SignupScreen, including the
/// current signupModelObj
class SignupController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController locktwoController = TextEditingController();

  Rx<SignupModel> signupModelObj = SignupModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    locktwoController.dispose();
  }
}
