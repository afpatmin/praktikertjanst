class QuizLogEntry {
  DateTime date;
  String email;
  String name;
  String language;
  double score;

  Map<String, dynamic> toJson() => {
        'date': date?.toIso8601String(),
        'email': email,
        'name': name,
        'score': score,
        'language': language
      };
}
