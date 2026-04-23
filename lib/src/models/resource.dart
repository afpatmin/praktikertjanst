import 'resource_types.dart';

class Phrases {
  String name;
  String description;
  String url;
  String estimated_time_for_completion;
}

class Resource {
  Resource();
  Map<String, Phrases> phrases = {};
  String icon;
  String img_url;
  String id;
  ResourceType type;
  bool complete = false;
}
