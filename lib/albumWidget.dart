import 'package:flutter/material.dart';

class AlbumWidget extends StatelessWidget {
  final String coverImage;
  final String albumName;
  final String releaseYear;

  AlbumWidget(
      {required this.coverImage,
      required this.albumName,
      required this.releaseYear,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Stack(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox.fromSize(
              child: Image.asset(coverImage, width: 200),
            )),
        Positioned(
          bottom: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                    Color.fromARGB(235, 41, 48, 48),
                    Color.fromARGB(55, 66, 66, 66)
                  ])),
              height: 200,
              width: 200,
              // color: Color.fromARGB(181, 66, 66, 66),
            ),
          ),
        ),
        // Image.asset(coverImage, width: 200),
        Positioned(
          left: 20,
          bottom: 20,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                    child: Text(albumName,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                    child: Text(releaseYear,
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 14,
                            color: Color.fromARGB(255, 154, 154, 154))),
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 157, 191, 199),
              child: Icon(
                Icons.play_arrow,
                color: Color.fromARGB(255, 51, 62, 63),
                size: 30,
              ),
              onPressed: () => {},
            )),
      ]),
    );
  }
}
