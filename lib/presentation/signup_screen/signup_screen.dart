import 'controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:rohit_s_application12/core/app_export.dart';
import 'package:rohit_s_application12/widgets/custom_elevated_button.dart';
import 'package:rohit_s_application12/widgets/custom_text_form_field.dart';

class SignupScreen extends GetWidget<SignupController> {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        top: false,
        child: Scaffold(
            resizeToAvoidBottomInset: true,
            body: SizedBox(
                width: 597.h,
                child: Column(children: [
                  SizedBox(height: 50.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 40.h, right: 40.h, bottom: 82.v),
                              child: Column(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage12,
                                    height: 318.v,
                                    width: 245.h),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30.h, vertical: 30.v),
                                    decoration: AppDecoration.fillIndigoF
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder22),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text("msg_let_s_get_started".tr,
                                              style:
                                                  theme.textTheme.displaySmall),
                                          Text("msg_create_an_account".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          SizedBox(height: 50.v),
                                          CustomTextFormField(
                                              autofocus: false,
                                              controller:
                                                  controller.emailController,
                                              prefix: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      15.h, 12.v, 30.h, 13.v),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEmail,
                                                      height: 30.v,
                                                      width: 30.h)),
                                              prefixConstraints: BoxConstraints(
                                                  maxHeight: 79.v)),
                                          SizedBox(height: 30.v),
                                          CustomTextFormField(
                                              autofocus: false,
                                              controller:
                                                  controller.locktwoController,
                                              // textInputAction:
                                              //     TextInputAction.done,
                                              prefix: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      15.h, 11.v, 30.h, 11.v),
                                                  child: CustomImageView(
                                                      imagePath:
                                                          ImageConstant.imgLock,
                                                      height: 30.adaptSize,
                                                      width: 30.adaptSize)),
                                              prefixConstraints: BoxConstraints(
                                                  maxHeight: 79.v),
                                              obscureText: true),
                                          SizedBox(height: 30.v),
                                          CustomTextFormField(
                                              autofocus: false,
                                              controller:
                                                  controller.locktwoController,
                                              // textInputAction:
                                              //     TextInputAction.done,
                                              prefix: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      15.h, 11.v, 30.h, 11.v),
                                                  child: CustomImageView(
                                                      imagePath:
                                                          ImageConstant.imgLock,
                                                      height: 30.adaptSize,
                                                      width: 30.adaptSize)),
                                              prefixConstraints: BoxConstraints(
                                                  maxHeight: 79.v),
                                              obscureText: true),
                                          SizedBox(height: 30.v),
                                          CustomElevatedButton(
                                            height: 50.v,
                                            text: "lbl_signup".tr,
                                            buttonTextStyle: TextStyle(
                                              fontSize: 30.fSize,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    onTapTxtConfirmation();
                                                  },
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 8.h, top: 12.v),
                                                      child: Text(
                                                          "msg_already_have_an"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .titleMediumBlack900))))
                                        ]))
                              ]))))
                ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the loginScreen.
  onTapTxtConfirmation() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
