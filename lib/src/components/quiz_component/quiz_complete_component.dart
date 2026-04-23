import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:fo_components/fo_components.dart' show FoValidators, CapitalizePipe;
import '../../components/button_component/button_component.dart';
import '../../models/mail.dart';
import '../../models/quiz.dart';
import '../../models/quiz_log_entry.dart';
import '../../services/mail_service.dart';
import '../../services/messages_service.dart';
import '../../services/quiz_log_service.dart';

@Component(
    selector: 'p-quiz-complete',
    templateUrl: 'quiz_complete_component.html',
    styleUrls: [
      'quiz_complete_component.css'
    ],
    directives: [
      ButtonComponent,
      formDirectives,
      MaterialCheckboxComponent,
      MaterialIconComponent,
      NgIf
    ],
    providers: [
      MailService,
    ],
    pipes: [
      CapitalizePipe
    ])
class QuizCompleteComponent {
  QuizCompleteComponent(this.mailService, this.quizLogService, this.msg);

  final MessagesService msg;

  Future<void> onSignupNewsLetter() async {
    if (form.valid && termsAccepted) {
      await quizLogService.update(logEntry, logId);

      await mailService.send(Mail()
        ..subject = 'New quiz completed'
        ..message = 'Email: ${logEntry.email}'
        ..sender = 'info@hg-rid.eu'
        ..receiver = 'stefan.sjo@digicy.se');

      emailSent = true;
    }
  }

  bool termsAccepted = false;
  bool emailSent = false;
  final MailService mailService;
  final QuizLogService quizLogService;

  @Input()
  Quiz model;

  @Input()
  QuizLogEntry logEntry;

  @Input()
  int logId;

  final ControlGroup form = ControlGroup({
    'email': Control(
        '', Validators.compose([Validators.required, FoValidators.email]))
  });
}
