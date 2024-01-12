import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rohit_s_application12/core/app_export.dart';
import 'package:rohit_s_application12/core/utils/image_constant.dart';
import 'package:rohit_s_application12/presentation/plantInfo_screen/plantinfo_screen.dart';
import 'package:rohit_s_application12/routes/app_routes.dart';
import 'package:rohit_s_application12/widgets/custom_image_view.dart';



class home_Screen extends StatefulWidget {
  const home_Screen({Key? key}) : super(key: key);

  @override
  State<home_Screen> createState() => _home_ScreenState();
}


class _home_ScreenState extends State<home_Screen> {
  Future pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    File imagee = File(pickedFile!.path);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => plantInfo_screen(image: imagee)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 170,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 130, right: 15, left: 15),
            child: Positioned(
              child: Container(
                height: 800,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 253, 253, 253),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hello,   Rohit",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w100,
                                fontSize: 20,
                                fontFamily: "poppins"),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.green,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: CustomImageView(
                        imagePath: ImageConstant.haveANiceDay,
                        height: 30,
                        width: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.plant3,
                              height: 130,
                              width: 60,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 200,
                                  child: Text(
                                    """Upload an Image to identify plant""",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "poppins",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => pickImage(),
                                  child: Container(
                                    child: Text(
                                      "Gallery",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: "poppins"),
                                    ),
                                    height: 35,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        border: Border.all(width: 0),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    // Container(
                    //   height: 150,
                    //   width: 350,
                    //   decoration: BoxDecoration(border: Border.all(width: 1)),
                    //   child: Lottie.network(
                    //       "https://lottie.host/b3f0d790-70f2-4010-96ef-c6a306f53a0b/fSjkql2Z9g.json"),
                    // )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(25, 60, 0, 0),
            child: Text("Aurangabad",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700)),
          ),
          Positioned(
            right: 60,
            top: 50,
            child: CustomImageView(
              imagePath: ImageConstant.homeplant,
              height: 80,
              width: 40,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(20)),
          child: GNav(
            selectedIndex: 0,
            iconSize: 30,
            tabMargin: EdgeInsets.all(2),
            backgroundColor: Colors.green,
            gap: 8,
            tabBackgroundColor: Colors.white,
            padding: EdgeInsets.all(15),
            tabBorderRadius: 20,
            color: Colors.white,
            tabs: [
              GButton(
                icon: Icons.home,
                text: "HOME",
              ),
              GButton(
                onPressed: () => onTapCamera(),
                icon: Icons.camera_alt,
                text: "SCAN",
              ),
              GButton(
                onPressed: () => onTapSearch(),
                icon: Icons.search,
                text: "SEARCH",
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapCamera() async {
    Get.toNamed(
      AppRoutes.camerascreen,
    );
  }

  onTapSearch() async {
    Get.toNamed(
      AppRoutes.searchscreen,
    );
  }

  onTapinfo(image) async {
    Get.toNamed(
      AppRoutes.plantinfoscreen,
    );
  }
}
