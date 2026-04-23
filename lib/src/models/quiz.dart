import 'resource.dart';

class Quiz extends Resource {
  Quiz();

  List<Question> questions;

  double minScore;

  int get maxScore {
    var s = 0;

    for (final q in questions) {
      final sorted = q.options.toList()..sort((o1, o2) => o2.score - o1.score);
      s += sorted.first.score;
    }
    return s;
  }

  int get currentScore {
    var s = 0;

    for (final q in questions) {
      final selectedOption = q.options
          .firstWhere((o) => o.value == q.selectedValue, orElse: () => null);
      if (selectedOption != null) {
        s += selectedOption.score;
      }
    }
    return s;
  }
}

class Question {
  Question();

  String label;
  List<Option> options;
  String selectedValue;
  String value;
}

class Option {
  Option();

  String value;
  String label;
  int score = 0;
}
