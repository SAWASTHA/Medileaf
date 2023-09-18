import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:rohit_s_application12/core/app_export.dart';
import 'package:rohit_s_application12/main.dart';
import 'package:rohit_s_application12/routes/app_routes.dart';

class camera_screen extends StatefulWidget {
  // const camera_screen({super.key});

  @override
  State<camera_screen> createState() => _camera_screenState();
}

class _camera_screenState extends State<camera_screen>
    with SingleTickerProviderStateMixin {
  late File _image;
  final imagePicker = ImagePicker();

  late CameraController _controller;

  late final AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _controller = CameraController(camera[0], ResolutionPreset.max);
    _controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            print("Access Denied");
            break;
          default:
            print(e.description);
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  bool imageClick = false;

  Future getimage() async {
    final image = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: CameraPreview(_controller),
          ),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Container(
                width: 350,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
                child: GNav(
                  selectedIndex: 1,
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
                      onPressed: () => onTapHome(),
                      icon: Icons.home,
                      text: "HOME",
                    ),
                    GButton(
                      icon: Icons.camera_alt,
                      text: "SCAN",
                    ),
                    GButton(
                      icon: Icons.search,
                      text: "SEARCH",
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Positioned(
          //     bottom: 150,
          //     left: 135,
          //     child: Container(
          //       height: 120,
          //       width: 120,
          //       child: GestureDetector(
          //         onTap: () {
          //           if (imageClick == false) {
          //             imageClick = true;
          //             _animationController.forward();
          //           }
          //         },
          //         child: Lottie.network(
          //           "https://lottie.host/13509443-0bbd-4d0f-ad9c-fa96dd44bc67/ShqqSvcAxh.json",
          //           controller: _animationController,
          //         ),
          //       ),
          //     ))
          Positioned(
            bottom: 150,
            left: 148,
            child: CustomImageView(
              imagePath: ImageConstant.ClickImage,
              height: 90,
              width: 90,
            ),
          ),
        ],
      ),
    );
  }

  onTapHome() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
