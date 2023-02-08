import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:music_application/albumWidget.dart';
import 'package:music_application/data.dart';

class Albums extends StatelessWidget {
  Albums({super.key});

  final List<Album> albums = [
    Album(
        id: 1,
        albumName: "Origin",
        coverImage: "assets/images/origin.jpg",
        releaseYear: "2019"),
    Album(
        id: 2,
        albumName: "Cloak",
        coverImage: "assets/images/cloak.jpg",
        releaseYear: "2016"),
    Album(
        id: 1,
        albumName: "Wallflower",
        coverImage: "assets/images/wallflower.jpg",
        releaseYear: "2017")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: albums.length,
          itemBuilder: (context, index) {
            return AlbumWidget(
                coverImage: albums[index].coverImage,
                albumName: albums[index].albumName,
                releaseYear: albums[index].releaseYear);
          }),
    );
  }
}
