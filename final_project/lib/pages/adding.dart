import 'package:final_project/pages/adresses.dart';
import 'package:final_project/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Adding extends StatefulWidget {
  const Adding({Key? key}) : super(key: key);

  @override
  State<Adding> createState() => _HomePageState();
}

class _HomePageState extends State<Adding> {
  String value = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10, left: 10, bottom: 20),
                child: TextField(
                  onChanged: (text) {
                    value = text;
                  },
                  decoration: InputDecoration(
                    hintText: "location",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey, width: 2)),
                  ),
                ),
              ),
              GestureDetector(
                child: Text("submit",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    )),
                onTap: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
