import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import '../../models/rise.dart';
import '../../services/messages_service.dart';
import '../../services/rise_service.dart';

@Component(
    selector: 'p-rise',
    templateUrl: 'rise_component.html',
    styleUrls: ['rise_component.css'],
    directives: [NgIf],
    providers: [])
class RiseComponent implements OnInit {
  RiseComponent(this.sanitizer, this.riseService, this.msg);

  @override
  void ngOnInit() {
    if (model != null) {
      url = sanitizer
          .bypassSecurityTrustResourceUrl(model.url[msg.currentLanguage]);
      model.complete = true;
    }
  }

  bool showModal = false;
  SafeResourceUrl url;
  final DomSanitizationService sanitizer;
  RiseService riseService;
  MessagesService msg;

  @Input('model')
  Rise model;
}
