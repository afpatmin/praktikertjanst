import 'dart:math';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/model/action/async_action.dart';
import 'package:angular_components/utils/angular/scroll_host/angular_2.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/quiz.dart';
import '../../models/quiz_log_entry.dart';
import '../../services/messages_service.dart';
import '../../services/question_service.dart';
import '../../services/quiz_log_service.dart';
import '../../services/quiz_service.dart';
import '../button_component/button_component.dart';
import 'quiz_complete_component.dart';
import 'quiz_fail_component.dart';

@Component(
    selector: 'p-quiz',
    templateUrl: 'quiz_component.html',
    styleUrls: ['quiz_component.css'],
    directives: [
      ButtonComponent,
      NgIf,
      MaterialStepperComponent,
      StepDirective,
      NgFor,
      MaterialRadioComponent,
      MaterialRadioGroupComponent,
      formDirectives,
      QuizCompleteComponent,
      QuizFailComponent,
      FoModalComponent
    ],
    providers: [scrollHostProviders, Location, QuizLogService],
    pipes: [CapitalizePipe],
    changeDetection: ChangeDetectionStrategy.Default)
class QuizComponent implements OnInit {
  QuizComponent(this.quizService, this.changeDetectorRef, this.location,
      this.quizLogService, this.msg, this.questionService);

  @override
  void ngOnInit() {
    try {
      populateQuiz();
      for (var question in model?.questions) {
        shuffle(question.options);
      }
    } on StateError catch (e) {
      print(e);
      print('hej quiz');
    }
  }

  void onContinue(AsyncAction<bool> event, int i) async {
    if (model.questions != null) {
      if (i == model.questions.length - 1) {
        completed = true;
        logEntry
          ..name = model.id
          ..score = model.currentScore.toDouble() / model.maxScore
          ..language = msg.currentLanguage;

        logId = await quizLogService.create(logEntry);
      }
    }
  }

  List shuffle(List options) {
    final random = Random();

    for (var i = options.length - 1; i > 0; i--) {
      final n = random.nextInt(i + 1);

      final temp = options[i];
      options[i] = options[n];
      options[n] = temp;
    }

    return options;
  }

  void init() {
    try {
      for (final question in model?.questions) {
        question.selectedValue = null;
      }

      completed = false;

      for (var question in model?.questions) {
        shuffle(question.options);
      }
    } on StateError {
      print('resource not found');
    }
  }

  void populateQuiz() {
    switch (model.id) {
      case 'Quiz för allmänheten':
        model?.questions = [
          questionService.data.qustions[msg.currentLanguage]
              ['Vad ska du göra med en tappad tand som är lagad med amalgam?'],
          questionService.data.qustions[msg.currentLanguage][
              'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?'],
          questionService.data.qustions[msg.currentLanguage]
              ['Hur påverkar framför allt metylkvicksilver, oss människor?'],
          questionService.data.qustions[msg.currentLanguage]
              ['Vilken råvara har högst andel kvicksilver?'],
          questionService.data.qustions[msg.currentLanguage]
              ['Hur stor del kvicksilver finns det i amalgam?'],
          questionService.data.qustions[msg.currentLanguage]
              ['När trädde EU:s skärpta regler kring amalgam i kraft?'],
          questionService.data.qustions[msg.currentLanguage][
              'Vad ska man göra av uppsamlat kvicksilver från svensk tandvård?']
        ];
        break;

      case 'Quiz för dig i tandvårdsteam':
        model?.questions = [
          questionService.data.qustions[msg.currentLanguage]
              ['Vad ska du göra med en tappad tand som är lagad med amalgam?'],
          questionService.data.qustions[msg.currentLanguage][
              'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?'],
          questionService.data.qustions[msg.currentLanguage]
              ['Hur påverkar framför allt metylkvicksilver, oss människor?'],
          questionService.data.qustions[msg.currentLanguage]
              ['Vilken råvara har högst andel kvicksilver?'],
          questionService.data.qustions[msg.currentLanguage]
              ['Hur stor del kvicksilver finns det i amalgam?'],
          questionService.data.qustions[msg.currentLanguage]
              ['När trädde EU:s skärpta regler kring amalgam i kraft?'],
          questionService.data.qustions[msg.currentLanguage][
              'Vad ska man göra av uppsamlat kvicksilver från svensk tandvård?'],
          questionService.data.qustions[msg.currentLanguage]
              ['Hur ofta ska avlopp med diskbänksavskiljare desinficeras?'],
          questionService.data.qustions[msg.currentLanguage][
              'Tandvårdsmottagningen har ansvar för rutiner och skötsel av amalgamavskiljare och sugsystem. Vad ingår i det dagliga underhållet?'],
          questionService.data.qustions[msg.currentLanguage][
              'Vad stämmer om ansvarsfördelningen när det gäller dokumentation?']
        ];
        break;

      case 'Quiz för dig som är servicetekniker':
        model?.questions = [
          questionService.data.qustions[msg.currentLanguage]
              ['Vad ska du göra med en tappad tand som är lagad med amalgam?'],
          questionService.data.qustions[msg.currentLanguage][
              'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?'],
          questionService.data.qustions[msg.currentLanguage]
              ['Hur påverkar framför allt metylkvicksilver, oss människor?'],
          questionService.data.qustions[msg.currentLanguage]
              ['Vilken råvara har högst andel kvicksilver?'],
          questionService.data.qustions[msg.currentLanguage]
              ['Hur stor del kvicksilver finns det i amalgam?'],
          questionService.data.qustions[msg.currentLanguage]
              ['När trädde EU:s skärpta regler kring amalgam i kraft?'],
          questionService.data.qustions[msg.currentLanguage][
              'Vad ska man göra av uppsamlat kvicksilver från svensk tandvård?'],
          questionService.data.qustions[msg.currentLanguage]
              ['Vad stämmer om installationen av sugslangar?'],
          questionService.data.qustions[msg.currentLanguage]
              ['Var ska sugmotorn vara installerad?'],
        ];
        break;
    }
  }

  @Input('model')
  Quiz model;

  bool get success =>
      model.currentScore.toDouble() / model.maxScore >= model.minScore;

  String resourceUrl;
  final ChangeDetectorRef changeDetectorRef;
  final QuizService quizService;
  final Location location;
  final MessagesService msg;
  final QuizLogService quizLogService;
  QuizLogEntry logEntry = QuizLogEntry();
  int logId;
  bool showAnswersModal = false;
  bool completed = false;
  final QuestionService questionService;
}
