import 'dart:async';
import 'dart:convert';
import 'package:angular/di.dart';
import 'package:http/browser_client.dart';
import '../models/quiz_log_entry.dart';

@Injectable()
class QuizLogService {
  Future<int> create(QuizLogEntry quizLogEntry) async {
    final client = BrowserClient();
    final response = await client.put('https://api.hg-rid.eu/quiz-log',
        body: json.encode(quizLogEntry.toJson()),
        headers: {'Content-Type': 'application/json'});
    if (response.statusCode != 201) {
      throw Exception(response.body);
    }
    return int.parse(response.body);
  }

  Future<QuizLogEntry> update(QuizLogEntry quizLogEntry, int id) async {
    final client = BrowserClient();
    final response = await client.put('https://api.hg-rid.eu/quiz-log/$id',
        body: json.encode(quizLogEntry.toJson()),
        headers: {'Content-Type': 'application/json'});
    if (response.statusCode != 200) {
      throw Exception(response.body);
    }
    return quizLogEntry;
  }
}
