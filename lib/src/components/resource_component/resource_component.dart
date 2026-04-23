import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/resource.dart';
import '../../models/resource_types.dart';
import '../../services/messages_service.dart';

@Component(
    selector: 'p-resource',
    templateUrl: 'resource_component.html',
    styleUrls: ['resource_component.css'],
    directives: [MaterialIconComponent, FoIconComponent, NgIf],
    pipes: [CapitalizePipe],
    changeDetection: ChangeDetectionStrategy.Default)
class ResourceComponent implements OnInit {
  ResourceComponent(this.msg);

  @override
  void ngOnInit() {
    backgroundImage = 'url(${model?.img_url})';
  }

  String details() {
    var details = '';
    switch (model.type) {
      case ResourceType.quiz:
        details =
            '${msg.quiz} | ${model.phrases[msg.currentLanguage].estimated_time_for_completion}';

        break;
      case ResourceType.rise:
        details =
            '${msg.article} | ${model.phrases[msg.currentLanguage].estimated_time_for_completion}';

        break;

      case ResourceType.video:
        details =
            '${msg.video} | ${model.phrases[msg.currentLanguage].estimated_time_for_completion}';

        break;

      case ResourceType.courseRoom:
        details = '';

        break;

      case ResourceType.document:
        details = '';

        break;
    }
    return details;
  }

  String backgroundImage;
  final MessagesService msg;

  @Input('model')
  Resource model;
}
