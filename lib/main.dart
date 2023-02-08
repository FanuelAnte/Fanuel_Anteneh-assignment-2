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
      body: ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Expanded(child: Text("Albums")),
                  const Text("View All")
                ],
              ),
              SizedBox(height: 200, child: Albums())
            ],
          ),
          Column(
            children: [
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Expanded(child: Text("Top Tracks")),
                  const Text("View All")
                ],
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
              backgroundColor: Colors.blue,
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
