import 'package:flutter/material.dart';

class TrackWidget extends StatelessWidget {
  final String coverImage;
  final String trackTitle;
  final String albumName;
  final String trackDuration;

  TrackWidget(
      {required this.coverImage,
      required this.trackTitle,
      required this.albumName,
      required this.trackDuration,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(coverImage, width: 60),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Text(trackTitle,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text(albumName,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromARGB(255, 154, 154, 154))),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Text(trackDuration,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff8DA4A9))),
            )
          ],
        ));
  }
}
