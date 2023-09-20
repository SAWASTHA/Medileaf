import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rohit_s_application12/core/app_export.dart';
import 'package:rohit_s_application12/main.dart';
import 'package:rohit_s_application12/presentation/plantInfo_screen/plantinfo_screen.dart';
import 'package:rohit_s_application12/routes/app_routes.dart';
import 'package:tflite/tflite.dart';

class camera_screen extends StatefulWidget {
  // const camera_screen({super.key});
  late List<CameraDescription> camera;

  @override
  State<camera_screen> createState() => _camera_screenState();
}

class _camera_screenState extends State<camera_screen> {
  getpicture() async {
    if (!_controller!.value.isInitialized) {
      return null;
    }
    if (_controller!.value.isTakingPicture) {
      return null;
    }
    try {
      await _controller!.setFlashMode(FlashMode.off);
      XFile file = await _controller!.takePicture();
      File imagee = File(file.path);
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => plantInfo_screen(image: imagee)),
      );
    } on CameraException catch (e) {
      debugPrint("Camera Exception $e");
      return null;
    }
  }

  late CameraController _controller;

  @override
  void initState() {
    super.initState();
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(border: Border.all(width: 10)),
              height: double.infinity,
              child: CameraPreview(_controller)),
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
                      onPressed: () => onTapSearch(),
                      icon: Icons.search,
                      text: "SEARCH",
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 150,
            left: 140,
            child: Container(
              child: GestureDetector(
                onTap: () => getpicture(),
                child: CustomImageView(
                  imagePath: ImageConstant.ClickImage,
                  height: 90,
                  width: 90,
                ),
              ),
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

  onTapSearch() async {
    Get.toNamed(
      AppRoutes.searchscreen,
    );
  }
}
