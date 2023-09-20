import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class tab1 extends StatefulWidget {
  const tab1({Key? key}) : super(key: key);

  @override
  State<tab1> createState() => _tab1State();
}

class _tab1State extends State<tab1> {
  getresponce(String message) async {
    Uri uri = Uri.parse("https://api.openai.com/v1/chat/completions");

    Map<String, dynamic> body = {
      "model": "gpt-3.5-turbo",
      "messages": [
        {"role": "system", "content": "You are a helpful assistant."},
        {"role": "user", "content": message},
      ],
      "max_tokens": 500,
    };

    final response = await http.post(uri, body: json.encode(body), headers: {
      "Content-Type": "application/json",
      "Authorization":
          "Bearer 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"
    });

    print(response.body);
  }

  String hello = "hello";

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Container(
            height: 200,
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(border: Border.all(width: 1)),
            child: GestureDetector(
                // onTap: () => getresponce(hello), 
                child: Text("Tab1"))),
      ),
    );
  }
}
