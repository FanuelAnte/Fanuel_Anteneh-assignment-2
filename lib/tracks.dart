import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:music_application/trackWidget.dart';
import 'package:music_application/data.dart';

class Tracks extends StatelessWidget {
  Tracks({super.key});

  final List<Track> tracks = [
    Track(
        id: 1,
        albumName: "Origin",
        coverImage: "assets/images/origin.jpg",
        trackTitle: "Oasis",
        trackDuration: "04:31"),
    Track(
        id: 2,
        albumName: "Cloak",
        coverImage: "assets/images/cloak.jpg",
        trackTitle: "Talk to Me",
        trackDuration: "04:31"),
    Track(
        id: 3,
        albumName: "Wallflower",
        coverImage: "assets/images/wallflower.jpg",
        trackTitle: "Eye to Eye",
        trackDuration: "04:31"),
    Track(
        id: 4,
        albumName: "Wallflower",
        coverImage: "assets/images/wallflower.jpg",
        trackTitle: "Eye to Eye",
        trackDuration: "04:31"),
    Track(
        id: 5,
        albumName: "Wallflower",
        coverImage: "assets/images/wallflower.jpg",
        trackTitle: "Eye to Eye",
        trackDuration: "04:31"),
    Track(
        id: 6,
        albumName: "Wallflower",
        coverImage: "assets/images/wallflower.jpg",
        trackTitle: "Eye to Eye",
        trackDuration: "04:31"),
    Track(
        id: 7,
        albumName: "Wallflower",
        coverImage: "assets/images/wallflower.jpg",
        trackTitle: "Eye to Eye",
        trackDuration: "04:31")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TrackWidget(
              coverImage: tracks[1].coverImage,
              albumName: tracks[1].albumName,
              trackTitle: tracks[1].trackTitle,
              trackDuration: tracks[1].trackDuration),
          TrackWidget(
              coverImage: tracks[2].coverImage,
              albumName: tracks[2].albumName,
              trackTitle: tracks[2].trackTitle,
              trackDuration: tracks[2].trackDuration),
          TrackWidget(
              coverImage: tracks[3].coverImage,
              albumName: tracks[3].albumName,
              trackTitle: tracks[3].trackTitle,
              trackDuration: tracks[3].trackDuration),
          TrackWidget(
              coverImage: tracks[4].coverImage,
              albumName: tracks[4].albumName,
              trackTitle: tracks[4].trackTitle,
              trackDuration: tracks[4].trackDuration),
          TrackWidget(
              coverImage: tracks[5].coverImage,
              albumName: tracks[5].albumName,
              trackTitle: tracks[5].trackTitle,
              trackDuration: tracks[5].trackDuration),
        ],
      ),
    );
  }
}
