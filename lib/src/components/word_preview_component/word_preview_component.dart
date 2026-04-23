import 'package:angular/angular.dart';
import '../../models/word.dart';
import '../../services/messages_service.dart';

@Component(
    selector: 'p-word-preview',
    templateUrl: 'word_preview_component.html',
    styleUrls: ['word_preview_component.css'],
    directives: [NgFor, NgIf],
    changeDetection: ChangeDetectionStrategy.OnPush)
class WordPreviewComponent {
  WordPreviewComponent(this.msg);

  @Input()
  Word model;

  final MessagesService msg;
}
