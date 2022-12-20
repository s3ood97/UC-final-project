import 'package:final_project/pages/adresses.dart';
import 'package:final_project/pages/business.dart';
import 'package:final_project/pages/history.dart';
import 'package:final_project/pages/house_hold.dart';
import 'package:final_project/pages/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          "electricity",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(70),
                child: Image.asset(
                  "assets/images/electricity.png",
                  width: 200,
                  height: 200,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, top: 30, right: 30),
                child: ElevatedButton(
                  child: Text(
                    "Residential",
                    style: TextStyle(fontSize: 50),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => House()));
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, top: 30, right: 30),
                child: ElevatedButton(
                  child: Text(
                    "Industrial",
                    style: TextStyle(fontSize: 50),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Business()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
              child: CircleAvatar(
                radius: 52,
                backgroundImage: NetworkImage(
                    "https://imageio.forbes.com/specials-images/imageserve/63974b591dbcd3145c446ad4/Elon-Musk/1960x0.jpg?format=jpg&width=960"),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.location_history),
              title: const Text('address'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Adress()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('history'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => History()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('settings'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Setting()));
              },
            ),
            ListTile(
              title: const Text('Close Tap'),
              onTap: () {
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
