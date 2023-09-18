// ignore_for_file: no_logic_in_create_state, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => Search1();
}

class Search1 extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
                height: 140,
                child: Center(
                    child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                    child: Container(
                    color: Colors.green,
                    child: TextField(
                    cursorColor: Colors.black,
        
                    decoration: InputDecoration(
                          disabledBorder: InputBorder.none,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          prefixIcon: Icon(Icons.search,weight: 10,color: Colors.black,),
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
                color: Colors.green,
                borderRadius: BorderRadius.circular(20)),
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
            ))
            )
            );
  }
}
