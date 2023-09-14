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
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
            child: Text("Aurangabad",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700)),
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
