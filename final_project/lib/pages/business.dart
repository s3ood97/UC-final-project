import 'package:final_project/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Business extends StatefulWidget {
  const Business({Key? key}) : super(key: key);

  @override
  State<Business> createState() => _HomePageState();
}

class _HomePageState extends State<Business> {
  final voltage = TextEditingController();
  final hours = TextEditingController();
  double result = 0;
  double bus = 0.0045;
  void busscalculations(double voltage, double hours) {
    setState(() {
      result = (voltage * hours) * bus;
    });
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          "industrial",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10, left: 10, bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Device Name",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey, width: 2)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30, left: 30, bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Voltage per Hour in kwh",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey, width: 2)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 50, left: 50, bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Hours of Usage",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey, width: 2)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 50, left: 50, bottom: 20),
                child: GestureDetector(
                  child: Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.black,
                  ),
                  onTap: () {
                    print("object");
                  },
                ),
              ),
              ElevatedButton(
                child: Text(
                  "Back",
                  style: TextStyle(fontSize: 50),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                onPressed: () {
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
