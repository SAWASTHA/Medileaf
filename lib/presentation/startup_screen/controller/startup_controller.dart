import 'package:rohit_s_application12/core/app_export.dart';
import 'package:rohit_s_application12/presentation/startup_screen/models/startup_model.dart';

/// A controller class for the StartupScreen.
///
/// This class manages the state of the StartupScreen, including the
/// current startupModelObj
class StartupController extends GetxController {
  Rx<StartupModel> startupModelObj = StartupModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () async {
      // if (firebaseUser != null) {
      //   QuerySnapshot snapshot =
      //       await FirebaseFirestore.instance.collection('users').get();

      //   snapshot.docs.forEach((f) {
      //     if (currentUser!.email == f.id) {
      //       onTapImgHome();
      //     }
      //   });

      //   QuerySnapshot snapshot2 =
      //       await FirebaseFirestore.instance.collection('doctors').get();

      //   snapshot2.docs.forEach((f) {
      //     if (currentUser!.email == f.id) {
      //       onTapDOctorImgHome();
      //     }
      //   });
      // }
      // else {
      Get.toNamed(AppRoutes.lSScreen);
      // }
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
