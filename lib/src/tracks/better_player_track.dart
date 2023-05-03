import 'dart:convert';

class BetterPlayerTrack {
  int type = 0;
  String name = "";
  int index = 0;

  BetterPlayerTrack(this.type, this.name, this.index);

  static List<BetterPlayerTrack> fromJsonArray(String jsonArrayString) {
    if(jsonArrayString.length < 3) return [];
    List<BetterPlayerTrack> list = [];
    List<dynamic> data = jsonDecode(jsonArrayString);
    data.forEach((element) {
      list.add(BetterPlayerTrack.fromJson(element));
    });
    return list;
  }

  BetterPlayerTrack.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    name = json['name'];
    index = json['index'];
  }

  static int TYPE_AUDIO = 1;
  static int TYPE_VIDEO = 2;
  static int TYPE_SUBTITLE = 3;
}