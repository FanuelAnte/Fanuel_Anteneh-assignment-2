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
      padding: EdgeInsets.all(5),
      child: Stack(children: [
        Image.asset(coverImage, width: 200),
        Positioned(
          left: 20,
          bottom: 20,
          child: Row(
            children: [
              Column(
                children: [Text(albumName), Text(releaseYear)],
              )
            ],
          ),
        ),
        Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              child: Icon(Icons.play_arrow),
              onPressed: () => {},
            )),
      ]),
    );
  }
}
