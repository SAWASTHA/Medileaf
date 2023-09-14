import 'controller/startup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:rohit_s_application12/core/app_export.dart';

// ignore_for_file: must_be_immutable
class StartupScreen extends GetWidget<StartupController> {
  const StartupScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      top: false,
      child: Scaffold(
          body: Center(
        child: CustomImageView(
          imagePath: ImageConstant.icon,
        ),
      )),
    );
  }
}
