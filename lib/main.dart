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
      body: NestedScrollView(
        // floatHeaderSlivers: true,
        headerSliverBuilder: ((context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              // floating: true,
              backgroundColor: Color.fromARGB(255, 27, 32, 33),
              expandedHeight: 240,
              flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/images/jordan.jpg",
                  ),
                  Positioned(
                      child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                          Color.fromARGB(255, 27, 32, 33),
                          Color.fromARGB(53, 27, 32, 33)
                        ])),
                  )),
                  Positioned(
                    left: 20,
                    bottom: 20,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                            child: Text("Jordan",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 28,
                                    color: Colors.white)),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                            child: Text("Rakei",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 28,
                                    color: Colors.white)),
                          ),
                        ]),
                  ),
                  Positioned(
                      top: 20,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: Color.fromARGB(124, 167, 167, 167),
                          height: 60,
                          width: 300,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 100, 0),
                                  child: Icon(Icons.menu, color: Colors.white),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(100, 0, 0, 0),
                                  child:
                                      Icon(Icons.search, color: Colors.white),
                                )
                              ]),
                        ),
                      ))
                ],
              )),
            )
          ];
        }),
        body: ListView(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Expanded(
                          child: Text(
                        "Top Albums",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white),
                      )),
                      const Text("View All",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
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
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
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
                              fontSize: 14,
                              color: Color.fromARGB(255, 154, 154, 154)))
                    ],
                  ),
                ),
                Tracks()
              ],
            ),
          ],
        ),
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
