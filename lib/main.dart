import 'package:flutter/material.dart';
import 'package:music_application/Albums.dart';
import 'package:music_application/Tracks.dart';
import 'package:music_application/albumWidget.dart';
import 'package:music_application/trackWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'JosefinSans',
          accentColor: Color.fromARGB(255, 27, 32, 33)),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 32, 33),
      body: ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                        child: Text(
                      "Albums",
                      style: TextStyle(
                          fontFamily: "JosefinSans",
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white),
                    )),
                    const Text("View All",
                        style: TextStyle(
                            fontFamily: "JosefinSans",
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color.fromARGB(255, 154, 154, 154)))
                  ],
                ),
              ),
              SizedBox(height: 200, child: Albums()),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                        child: Text("Top Tracks",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.white))),
                    const Text("View All",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color.fromARGB(255, 154, 154, 154)))
                  ],
                ),
              ),
              Tracks()
              // Column(
              //   children: [],
              // )
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          selectedFontSize: 10,
          selectedItemColor: Color(0xff9DBFC7),
          unselectedFontSize: 10,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit),
              label: "Blog",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shuffle),
              label: "Random",
              backgroundColor: Color.fromARGB(255, 44, 55, 57),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.album),
              label: "Merch",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mic),
              label: "Live Events",
            ),
          ]),
    );
  }
}
