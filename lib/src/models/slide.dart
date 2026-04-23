class Slide {
  Map<String, SlidePhrases> phrases = {};
  String background_image;
  bool external_link = false;
  String id;
}

class SlidePhrases {
  String paragraph;
  String link;
  String button_label;
}
