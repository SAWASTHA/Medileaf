import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:rohit_s_application12/core/app_export.dart';
import 'package:rohit_s_application12/widgets/custom_elevated_button.dart';
import 'package:rohit_s_application12/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      top: false,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SizedBox(
          width: 597.h,
          child: Column(
            children: [
              SizedBox(height: 50.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 40.h,
                      right: 40.h,
                      bottom: 159.v,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage12,
                          height: 318.v,
                          width: 245.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30.h,
                            vertical: 50.v,
                          ),
                          decoration: AppDecoration.fillIndigoF.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder22,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "lbl_welcome_back".tr,
                                style: theme.textTheme.displaySmall,
                              ),
                              SizedBox(height: 2.v),
                              Text(
                                "msg_log_into_your_existing".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              SizedBox(height: 50.v),
                              CustomTextFormField(
                                autofocus: false,
                                controller: controller.emailController,
                                prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      15.h, 12.v, 30.h, 13.v),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgEmail,
                                    height: 30.v,
                                    width: 30.h,
                                  ),
                                ),
                                prefixConstraints: BoxConstraints(
                                  maxHeight: 60.v,
                                ),
                              ),
                              SizedBox(height: 30.v),
                              CustomTextFormField(
                                autofocus: false,
                                controller: controller.lockController,
                                textInputAction: TextInputAction.done,
                                prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      15.h, 11.v, 30.h, 11.v),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgLock,
                                    height: 30.adaptSize,
                                    width: 30.adaptSize,
                                  ),
                                ),
                                prefixConstraints: BoxConstraints(
                                  maxHeight: 50.v,
                                ),
                                obscureText: true,
                              ),
                              SizedBox(height: 30.v),
                              CustomElevatedButton(
                                onTap: () => onTapLogin(),
                                height: 50.v,
                                text: "lbl_login".tr,
                                buttonTextStyle: TextStyle(
                                  fontSize: 30.fSize,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.h,
                                    top: 20.v,
                                    bottom: 22.v,
                                  ),
                                  child: InkWell(
                                    onTap: () => onTapSignup(),
                                    child: Text(
                                      "msg_don_t_have_an_account".tr,
                                      style:
                                          CustomTextStyles.titleMediumBlack900,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapSignup() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }

  onTapLogin() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
