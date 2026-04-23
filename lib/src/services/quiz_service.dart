import 'dart:async';
import 'package:angular/angular.dart';
import '../models/quiz.dart';
import '../models/resource.dart';
import '../models/resource_types.dart';
import '../services/question_service.dart';
import '../services/resource_service.dart';

@Injectable()
class QuizService extends ResourceService<Quiz> {
  QuizService(this.questionService) {
    questionService.fetchAll();
  }
  @override
  Future<Map<String, Quiz>> fetchAll() async {
    await Future.delayed(const Duration(milliseconds: 1));

    return data = {
      'Quiz för allmänheten': Quiz()
        ..questions = []
        ..minScore = 0.8
        ..id = 'Quiz för allmänheten'
        ..icon = 'quiz'
        ..img_url = 'pics/courseroom_for_curious.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Quiz för allmänheten'
          ..description =
              'Test på dina kunskaper utifrån ett allmänt perspektiv.'
          ..url = 'quiz-for-allmanheten'
          ..estimated_time_for_completion = 'Ca 2 min')
        ..phrases['en'] = (Phrases()
          ..name = 'Quiz for the public'
          ..description = 'Test your knowledge from a general perspective.'
          ..url = 'quiz-for-the-public'
          ..estimated_time_for_completion = 'Approx. 2 min')
        ..phrases['fr'] = (Phrases()
          ..name = 'Quiz pour le public'
          ..description = 'Testez vos connaissances d’un point de vue général.'
          ..url = 'quiz-pour-le-public'
          ..estimated_time_for_completion = 'Env. 2 min')
        ..phrases['es'] = (Phrases()
          ..name = 'Cuestionario público'
          ..description =
              'Ponga a prueba sus conocimientos desde una perspectiva general.'
          ..url = 'cuestionario-publico'
          ..estimated_time_for_completion = 'Aprox. 2 minutos')
        ..phrases['de'] = (Phrases()
          ..name = 'Quiz für die Öffentlichkeit'
          ..description =
              'Testen Sie Ihr Allgemeinwissen.'
          ..url = 'quiz-fur-die-offentlichkeit'
          ..estimated_time_for_completion = '2 Min.')
        ..type = ResourceType.quiz,
      'Quiz för dig i tandvårdsteam': Quiz()
        ..questions = []
        ..minScore = 0.9
        ..id = 'Quiz för dig i tandvårdsteam'
        ..icon = 'quiz'
        ..img_url = 'pics/responsibility.jpg'
        ..type = ResourceType.quiz
        ..phrases['sv'] = (Phrases()
          ..name = 'Quiz för dig i tandvårdsteam'
          ..url = 'quiz-for-tandvardsteam'
          ..description =
              'Test på dina kunskaper utifrån tandvårdsteamets perspektiv.'
          ..estimated_time_for_completion = 'Ca 3 min')
        ..phrases['en'] = (Phrases()
          ..name = 'Quiz for the dental team'
          ..url = 'quiz-for-the-dental-team'
          ..description =
              'Test your knowledge from the dental care team’s perspective.'
          ..estimated_time_for_completion = 'Approx. 3 min')
        ..phrases['fr'] = (Phrases()
          ..name = 'Quiz pour le personnel de soins dentaires'
          ..url = 'quiz-pour-personnel-soins-dentaires'
          ..description =
              'Testez vos connaissances du point de vue de l’équipe de soins dentaires'
          ..estimated_time_for_completion = 'Env. 3 min')
        ..phrases['es'] = (Phrases()
          ..name = 'Cuestionario para el personal del equipo de cuidado dental'
          ..url = 'cuestionario-para-el-personal-del-equipo-de-cuidado-dental'
          ..description =
              'Ponga a prueba sus conocimientos desde la perspectiva del equipo de cuidado dental'
          ..estimated_time_for_completion = 'Aprox. 3 minutos')
        ..phrases['de'] = (Phrases()
          ..name = 'Quiz für das Praxisteam'
          ..url = 'quiz-fur-das-praxisteam'
          ..description =
              'Testen Sie Ihr Wissen aus der Perspektive des Praxisteams'
          ..estimated_time_for_completion = '3 Min.')
        ..type = ResourceType.quiz,
      'Quiz för dig som är servicetekniker': Quiz()
        ..questions = []
        ..minScore = 0.9
        ..id = 'Quiz för dig som är servicetekniker'
        ..icon = 'quiz'
        ..img_url = 'pics/environmental_service_companies.jpg'
        ..type = ResourceType.quiz
        ..phrases['sv'] = (Phrases()
          ..name = 'Quiz för dig som är servicetekniker'
          ..url = 'quiz-for-servicetekniker'
          ..description =
              'Test på dina kunskaper utifrån serviceteknikerns perspektiv.'
          ..estimated_time_for_completion = 'Ca 3 min')
        ..phrases['en'] = (Phrases()
          ..name = 'Quiz for service technicians'
          ..url = 'quiz-for-service-technicians'
          ..description =
              'Test your knowledge from the service technician’s perspective.'
          ..estimated_time_for_completion = 'Approx. 3 min')
        ..phrases['fr'] = (Phrases()
          ..name = 'Quiz pour les techniciens de service'
          ..url = 'quiz-pour-techniciens-service'
          ..description =
              'Testez vos connaissances du point de vue des techniciens de service.'
          ..estimated_time_for_completion = 'Env. 3 min')
        ..phrases['es'] = (Phrases()
          ..name = 'Cuestionario para técnicos de servicio'
          ..url = 'cuestionario-para-tecnicos-de-servicio'
          ..description =
              'Ponga a prueba sus conocimientos desde la perspectiva de un técnico de servicio'
          ..estimated_time_for_completion = 'Aprox. 3 minutos')
        ..phrases['de'] = (Phrases()
          ..name = 'Quiz für Servicetechniker'
          ..url = 'quiz-fur-servicetechniker'
          ..description =
              'Testen Sie Ihr Wissen aus der Perspektive des Servicetechnikers.'
          ..estimated_time_for_completion = '3 Min.')
        ..type = ResourceType.quiz
    };
  }

  QuestionService questionService;
}
