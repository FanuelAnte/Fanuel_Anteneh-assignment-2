class Album {
  int id;
  String coverImage;
  String albumName;
  String releaseYear;

  Album(
      {required this.id,
      required this.coverImage,
      required this.albumName,
      required this.releaseYear});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
        id: json["id"],
        coverImage: json["coverImage"],
        albumName: json["albumName"],
        releaseYear: json["releaseYear"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};

    json["id"] = id;
    json["coverImage"] = coverImage;
    json["albumName"] = albumName;
    json["releaseYear"] = releaseYear;

    return json;
  }
}

class Track {
  int id;
  String coverImage;
  String trackTitle;
  String albumName;
  String trackDuration;

  Track(
      {required this.id,
      required this.coverImage,
      required this.trackTitle,
      required this.albumName,
      required this.trackDuration});

  factory Track.fromJson(Map<String, dynamic> json) {
    return Track(
        id: json["id"],
        coverImage: json["coverImage"],
        trackTitle: json["trackTitle"],
        albumName: json["albumName"],
        trackDuration: json["trackDuration"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};

    json["id"] = id;
    json["coverImage"] = coverImage;
    json["trackTitle"] = trackTitle;
    json["albumName"] = albumName;
    json["trackDuration"] = trackDuration;

    return json;
  }
}
