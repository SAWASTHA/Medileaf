import 'package:rohit_s_application12/presentation/utils.dart';

import 'controller/l_s_controller.dart';
import 'package:flutter/material.dart';
import 'package:rohit_s_application12/core/app_export.dart';
import 'package:rohit_s_application12/widgets/custom_elevated_button.dart';
import 'package:google_fonts/google_fonts.dart';

class LSScreen extends GetWidget<LSController> {
  // const LSScreen({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  // mediaQueryData = MediaQuery.of(context);

  // double baseWidth = 597;
  // double fem = MediaQuery.of(context).size.width / baseWidth;
  // double ffem = fem * 0.97;
  // return
  //     //  SafeArea(
  //     //     child: Scaffold(

  //     // body: SizedBox(
  //     //     width: 597.h,
  //     //     child: Column(children: [
  //     //       SizedBox(height: 204.v),
  //     //       Expanded(
  //     //           child: SingleChildScrollView(
  //     //               child: Padding(
  //     //                   padding: EdgeInsets.only(
  //     //                       left: 62.h, right: 62.h, bottom: 186.v),
  //     //                   child: Column(
  //     //                       crossAxisAlignment: CrossAxisAlignment.start,
  //     //                       children: [
  //     //                         CustomImageView(
  //     //                             imagePath: ImageConstant.imgImage9,
  //     //                             height: 510.v,
  //     //                             width: 333.h,
  //     //                             margin: EdgeInsets.only(left: 35.h)),
  //     //                         Align(
  //     //                             alignment: Alignment.center,
  //     //                             child: Padding(
  //     //                                 padding: EdgeInsets.only(top: 3.v),
  //     //                                 child: Divider(
  //     //                                     color: appTheme.black900,
  //     //                                     indent: 41.h,
  //     //                                     endIndent: 41.h))),
  //     //                         SizedBox(height: 191.v),
  //     //                         CustomElevatedButton(
  //     //                             text: "lbl_login".tr,
  //     //                             buttonStyle:
  //     //                                 CustomButtonStyles.fillBlack,
  //     //                             onTap: () {
  //     //                               onTapLogin();
  //     //                             }),
  //     //                         SizedBox(height: 32.v),
  //     //                         CustomElevatedButton(
  //     //                             text: "lbl_signup".tr,
  //     //                             buttonStyle: CustomButtonStyles
  //     //                                 .fillPrimaryContainer,
  //     //                             onTap: () {
  //     //                               onTapSignup();
  //     //                             })
  //     //                       ]))))
  //     //     ]))
  //     SingleChildScrollView(
  //       child: Container(
  //           height: 400,
  //           width: double.infinity,
  //           child: Container(
  //       // lsXny (2:22)
  //       padding: EdgeInsets.fromLTRB(62 * fem, 204 * fem, 62 * fem, 186 * fem),
  //       width: double.infinity,
  //       decoration: BoxDecoration(
  //         color: Color(0xffffffff),
  //       ),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         children: [
  //           Container(
  //             // plante6u (2:29)
  //             margin:
  //                 EdgeInsets.fromLTRB(35 * fem, 0 * fem, 41 * fem, 195 * fem),
  //             width: double.infinity,
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Container(
  //                   margin:
  //                       EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 3 * fem),
  //                   width: 333 * fem,
  //                   height: 510 * fem,
  //                   child:
  //                       // Image.asset(
  //                       //   'assets/images/image_9.png',
  //                       //   fit: BoxFit.cover,
  //                       // ),
  //                       CustomImageView(
  //                     imagePath: ImageConstant.imgImage9,
  //                     width: 333 * fem,
  //                     height: 510 * fem,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           Container(
  //             // loginh5B (2:26)
  //             margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 32 * fem),
  //             child: TextButton(
  //               onPressed: () {},
  //               style: TextButton.styleFrom(
  //                 padding: EdgeInsets.zero,
  //               ),
  //               child: Container(
  //                 width: double.infinity,
  //                 height: 82 * fem,
  //                 decoration: BoxDecoration(
  //                   color: Color(0xff000000),
  //                   borderRadius: BorderRadius.circular(17 * fem),
  //                 ),
  //                 child: Center(
  //                   child: Text(
  //                     'LOGIN',
  //                     textAlign: TextAlign.center,
  //                     // style: SafeGoogleFont (
  //                     //   'Poppins',
  //                     //   fontSize: 41*ffem,
  //                     //   fontWeight: FontWeight.w600,
  //                     //   height: 1.5*ffem/fem,
  //                     //   color: Color(0xffffffff),
  //                     // ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ),
  //           TextButton(
  //             // signupJKs (2:23)
  //             onPressed: () {},
  //             style: TextButton.styleFrom(
  //               padding: EdgeInsets.zero,
  //             ),
  //             child: Container(
  //               width: double.infinity,
  //               height: 82 * fem,
  //               decoration: BoxDecoration(
  //                 color: Color(0xff39ae9d),
  //                 borderRadius: BorderRadius.circular(17 * fem),
  //               ),
  //               child: Center(
  //                 child: Text(
  //                   'SIGNUP',
  //                   textAlign: TextAlign.center,
  //                   // style: SafeGoogleFont (
  //                   //   'Poppins',
  //                   //   fontSize: 41*ffem,
  //                   //   fontWeight: FontWeight.w600,
  //                   //   height: 1.5*ffem/fem,
  //                   //   color: Color(0xffffffff),
  //                   // ),
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //           ),
  //         ),
  //     );
  // // ));
  // }
  @override
  Widget build(BuildContext context) {
    double baseWidth = 597;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // lsXny (2:22)
        padding: EdgeInsets.fromLTRB(62 * fem, 204 * fem, 62 * fem, 186 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // plante6u (2:29)
              margin:
                  EdgeInsets.fromLTRB(35 * fem, 0 * fem, 41 * fem, 195 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // image9B6q (2:31)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 3 * fem),
                    width: 333 * fem,
                    height: 510 * fem,
                    child: Image.asset(
                      'assets/images/img_image9.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // loginh5B (2:26)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 32 * fem),
              child: TextButton(
                onPressed: () {
                  onTapLogin();
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 82 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xff000000),
                    borderRadius: BorderRadius.circular(17 * fem),
                  ),
                  child: Center(
                    child: Text(
                      'LOGIN',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 41 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              // signupJKs (2:23)
              onPressed: () {
                onTapSignup();
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Container(
                width: double.infinity,
                height: 82 * fem,
                decoration: BoxDecoration(
                  color: Color(0xff39ae9d),
                  borderRadius: BorderRadius.circular(17 * fem),
                ),
                child: Center(
                  child: Text(
                    'SIGNUP',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 41 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.5 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapLogin() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  onTapSignup() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }
}
