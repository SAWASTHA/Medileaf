import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:rohit_s_application12/core/app_export.dart';
import 'package:rohit_s_application12/routes/app_routes.dart';

class search_Screen extends StatefulWidget {
  // const search_Screen({super.key});

  @override
  State<search_Screen> createState() => _search_ScreenState();
}

class _search_ScreenState extends State<search_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: 140,
            child: Center(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: Container(
                width: 350,
                color: Colors.green,
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      disabledBorder: InputBorder.none,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(
                        Icons.search,
                        weight: 10,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
            )),
            decoration: BoxDecoration(
              color: Colors.green,
            )),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(20)),
            child: GNav(
              selectedIndex: 2,
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
                  onPressed: () => onTapCamera(),
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
        ));
  }

  onTapCamera() async {
    Get.toNamed(
      AppRoutes.camerascreen,
    );
  }

  onTapHome() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
