import 'dart:io';
import 'package:flutter/material.dart';
import 'package:rohit_s_application12/presentation/plantInfo_screen/tab1.dart';
import 'package:rohit_s_application12/presentation/plantInfo_screen/tab2.dart';
import 'package:tflite/tflite.dart';

class plantInfo_screen extends StatefulWidget {
  // const plantInfo_screen({super.key});
  final image;
  plantInfo_screen({required this.image});

  @override
  State<plantInfo_screen> createState() => _plantInfo_screenState();
}

class _plantInfo_screenState extends State<plantInfo_screen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    loadModel();
    // pickImage();
    runmodelonImage(widget.image);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  late File _image;
  late List _results;
  bool imageSelect = false;
  String PlantName = "";

  Future runmodelonImage(File image) async {
    final List? recognitions = await Tflite.runModelOnImage(
      path: image.path, // required
      imageMean: 127.5, // defaults to 117.0
      imageStd: 127.5, // defaults to 1.0
      numResults: 1, // defaults to 5
      threshold: 0.05, // defaults to 0.1
    );
    setState(() {
      _results = recognitions!;
      _image = image;
      imageSelect = true;

      _results.map((result) {
        PlantName = "${result['label']}";
      }).toList();

      RegExp regex = RegExp(r'\b\w+\b');
      Iterable<Match> matches = regex.allMatches(PlantName);
      if (matches.isNotEmpty) {
        Match lastMatch = matches.last;
        String lastWord = lastMatch.group(0)!;
        PlantName = lastWord;
      } else {
        print("No word found in the string.");
      }
    });
  }

  loadModel() async {
    Tflite.close();
    String res;
    res = (await Tflite.loadModel(
        model: "assets/model.tflite", labels: "assets/labels.txt"))!;
    print("Status : " + res);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Positioned(
              child: (imageSelect)
                  ? Container(
                      height: 340,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.black,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                          image: FileImage(_image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  : Container()),
          Padding(
            padding: EdgeInsets.only(top: 320, right: 0, left: 0),
            child: Positioned(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: Container(
                        child: Text(
                          "$PlantName",
                          style: TextStyle(fontFamily: "poppins", fontSize: 25),
                        ),
                      ),
                    ),
                    Container(
                      width: 220,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: TabBar(
                                labelStyle: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.bold),
                                unselectedLabelColor: Colors.black,
                                labelColor: Colors.green,
                                indicatorColor: Colors.green,
                                indicatorWeight: 5,
                                controller: tabController,
                                tabs: [
                                  Tab(
                                    text: "Details",
                                  ),
                                  Tab(
                                    text: "Explore",
                                  ),
                                ]),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: TabBarView(controller: tabController, children: [
                      tab1(),
                      tab2(),
                    ]))
                  ],
                ),
                height: 500,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
