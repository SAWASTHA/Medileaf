import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class tab2 extends StatefulWidget {
  @override
  State<tab2> createState() => _tab2State();
}

class _tab2State extends State<tab2> {
  List<Map<String, dynamic>> data = [
    {
      "name": "Flower",
      "qualification": "MD., DM. (Cardiology)",
      "speciality": " Cardiologist",
      "experience":
          "More than 18 years of clinical experience out of which 5 years in USA.",
      "image": "http://bajajhospital.com/Images/DrAjitBhagwat.png",
      "workplace": "Kamalnayan Bajaj Hospital",
      "career":
          " Presented & Published more than 50 papers in various sub-specialties in Cardiology Performed more than 11000 Cath Lab procedures.The only American Board Certified Interventional Cardiologist in Maharashtra.",
      "rating": "⭐⭐⭐⭐",
      "exp": "18",
      "patients": "223",
      "language": "Eng/Hindi",
      "hospAdd":
          "Gut No 43 Bajaj Marg,Beed Bypass Rd,Satara Deolai Parisar,Aurangabad,Maharashtra 431010"
    },
    {
      "name": "SunFlower",
      "qualification": "MD., DM. (Cardiology)",
      "speciality": " Cardiologist",
      "experience":
          "More than 18 years of clinical experience out of which 5 years in USA.",
      "image": "http://bajajhospital.com/Images/DrAjitBhagwat.png",
      "workplace": "Kamalnayan Bajaj Hospital",
      "career":
          " Presented & Published more than 50 papers in various sub-specialties in Cardiology Performed more than 11000 Cath Lab procedures.The only American Board Certified Interventional Cardiologist in Maharashtra.",
      "rating": "⭐⭐⭐⭐",
      "exp": "18",
      "patients": "223",
      "language": "Eng/Hindi",
      "hospAdd":
          "Gut No 43 Bajaj Marg,Beed Bypass Rd,Satara Deolai Parisar,Aurangabad,Maharashtra 431010"
    }
  ];

  addData() async {
    for (var element in data) {
      FirebaseFirestore.instance
          .collection("flower")
          .doc(element['name'])
          .set(element, SetOptions(merge: true));
    }
    print("all data added");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(onPressed: () => addData(), child: Text("Add")),
    );
  }
}
