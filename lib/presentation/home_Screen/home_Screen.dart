import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class home_Screen extends StatefulWidget {
  const home_Screen({Key? key}) : super(key: key);

  @override
  State<home_Screen> createState() => _home_ScreenState();
}

class _home_ScreenState extends State<home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Container(
          padding: EdgeInsets.all(10),
          // height: 0,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(20)),
          child: GNav(
            backgroundColor: Colors.green,
            gap: 8,
            tabBackgroundColor: Colors.white,
            padding: EdgeInsets.all(15),
            tabBorderRadius: 20,
            color: Colors.white,
            tabs: const [
              GButton(
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
    );
  }
}
